# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import os
import scipy.stats

import numpy as np
import matplotlib.pyplot as plt
from sklearn.metrics import auc, roc_curve
import functools

# Look at me being proactive!
import matplotlib

matplotlib.rcParams['pdf.fonttype'] = 42
matplotlib.rcParams['ps.fonttype'] = 42


MODELS_TO_IGNORE = '128'
TARGETS_ONLY = False
TARGETS_PATH = f'/mnt/LargeDisk/Victor/targeted_point_removal/targets_{10:02d}.npy'


def sweep(score, x):
    """
    Compute a ROC curve and then return the FPR, TPR, AUC, and ACC.
    """
    fpr, tpr, _ = roc_curve(x, -score)
    acc = np.max(1 - (fpr + (1 - tpr)) / 2)
    return fpr, tpr, auc(fpr, tpr), acc


def load_data(p):
    """
    Load our saved scores and then put them into a big matrix.
    """
    global scores, keep, index_of_1287
    scores = []
    keep = []
    ds_list = []

    for root, ds, _ in os.walk(p):
        for f in ds:
            if not f.startswith("experiment"): continue
            if f.startswith(f"experiment-{MODELS_TO_IGNORE}") and not f.startswith(f"experiment-{MODEL_TO_PLOT}"): continue
            if not os.path.exists(os.path.join(root, f, "scores")): continue
            last_epoch = sorted(os.listdir(os.path.join(root, f, "scores")))
            if len(last_epoch) == 0: continue
            s1 = np.load(os.path.join(root, f, "scores", last_epoch[-1]))
            s2 = np.load(os.path.join(root, f, "test_scores", last_epoch[-1]))
            # scores.append(np.concatenate((s1, s2, )))
            scores.append(s1)
            k1 = np.load(os.path.join(root, f, "keep.npy"))
            k2 = np.zeros((10_000, )).astype('bool')
            # keep.append(np.concatenate((k1, k2, )))
            keep.append(k1)
            ds_list.append(f.startswith(f"experiment-{MODEL_TO_PLOT}"))

    scores = np.array(scores)
    keep = np.array(keep)[:, :scores.shape[1]]
    index_of_1287 = ds_list.index(True)

    print(scores.shape)
    print(keep.shape)
    print(index_of_1287)

    if TARGETS_ONLY:
        np.random.seed(123)
        targets = np.load(TARGETS_PATH)
        remaining = [i for i in range(scores.shape[1]) if i not in targets]
        non_targets = np.random.choice(remaining, targets.shape[0])
        print(targets.shape, non_targets.shape)
        to_keep = np.concatenate((targets, non_targets))
        scores = scores[:, to_keep, :]
        keep = keep[:, to_keep]

    print(scores.shape)
    print(keep.shape)
    print(index_of_1287)

    return scores, keep, index_of_1287


def generate_ours(keep, scores, check_keep, check_scores, in_size=100000, out_size=100000,
                  fix_variance=False):
    """
    Fit a two predictive models using keep and scores in order to predict
    if the examples in check_scores were training data or not, using the
    ground truth answer from check_keep.
    """
    dat_in = []
    dat_out = []

    for j in range(scores.shape[1]):
        dat_in.append(scores[keep[:, j], j, :])
        dat_out.append(scores[~keep[:, j], j, :])

    in_size = min(min(map(len, dat_in)), in_size)
    out_size = min(min(map(len, dat_out)), out_size)

    dat_in = np.array([x[:in_size] for x in dat_in])
    dat_out = np.array([x[:out_size] for x in dat_out])

    mean_in = np.median(dat_in, 1)
    mean_out = np.median(dat_out, 1)

    if fix_variance:
        std_in = np.std(dat_in)
        std_out = np.std(dat_in)
    else:
        std_in = np.std(dat_in, 1)
        std_out = np.std(dat_out, 1)

    prediction = []
    answers = []
    for ans, sc in zip(check_keep, check_scores):
        pr_in = -scipy.stats.norm.logpdf(sc, mean_in, std_in + 1e-30)
        pr_out = -scipy.stats.norm.logpdf(sc, mean_out, std_out + 1e-30)
        score = pr_in - pr_out

        prediction.extend(score.mean(1))
        answers.extend(ans)

    return prediction, answers


def generate_ours_offline(keep, scores, check_keep, check_scores, in_size=100000, out_size=100000,
                          fix_variance=False):
    """
    Fit a single predictive model using keep and scores in order to predict
    if the examples in check_scores were training data or not, using the
    ground truth answer from check_keep.
    """
    dat_in = []
    dat_out = []

    for j in range(scores.shape[1]):
        dat_in.append(scores[keep[:, j], j, :])
        dat_out.append(scores[~keep[:, j], j, :])

    out_size = min(min(map(len, dat_out)), out_size)

    dat_out = np.array([x[:out_size] for x in dat_out])

    mean_out = np.median(dat_out, 1)

    if fix_variance:
        std_out = np.std(dat_out)
    else:
        std_out = np.std(dat_out, 1)

    prediction = []
    answers = []
    for ans, sc in zip(check_keep, check_scores):
        score = scipy.stats.norm.logpdf(sc, mean_out, std_out + 1e-30)

        prediction.extend(score.mean(1))
        answers.extend(ans)
    return prediction, answers


def generate_global(keep, scores, check_keep, check_scores):
    """
    Use a simple global threshold sweep to predict if the examples in
    check_scores were training data or not, using the ground truth answer from
    check_keep.
    """
    prediction = []
    answers = []
    for ans, sc in zip(check_keep, check_scores):
        prediction.extend(-sc.mean(1))
        answers.extend(ans)

    return prediction, answers


def do_plot(fn, keep, scores, ntest, legend='', metric='auc', sweep_fn=sweep, **plot_kwargs):
    """
    Generate the ROC curves by using ntest models as test models and the rest to train.
    """

    mask_1287 = np.zeros((keep.shape[0], )).astype('bool')
    mask_1287[index_of_1287] = True
    mask_all_but_1287 = np.logical_not(mask_1287)

    prediction, answers = fn(keep[mask_all_but_1287],
                             scores[mask_all_but_1287],
                             keep[mask_1287],
                             scores[mask_1287])

    print(np.array(prediction).shape, np.array(answers, dtype=bool).shape)

    fpr, tpr, auc, acc = sweep_fn(np.array(prediction), np.array(answers, dtype=bool))

    try:
        low = tpr[np.where(fpr < .001)[0][-1]]
        print('Attack %s   AUC %.4f, Accuracy %.4f, TPR@0.1%%FPR of %.4f' % (legend, auc, acc, low))
    except IndexError:
        print(f'WARNING: min(fpr)={np.min(fpr)}')

    metric_text = ''
    if metric == 'auc':
        metric_text = 'auc=%.3f' % auc
    elif metric == 'acc':
        metric_text = 'acc=%.3f' % acc

    plt.plot(fpr, tpr, label=legend + metric_text, **plot_kwargs)
    return (acc, auc)


def fig_fpr_tpr():
    plt.figure(figsize=(4, 3))

    global MODEL_TO_PLOT

    MODEL_TO_PLOT = 1280

    load_data("exp/cifar10/")

    do_plot(generate_ours,
            keep, scores, 1,
            "Original\n",
            metric='auc'
            )

    MODEL_TO_PLOT = 1287

    load_data("exp/cifar10/")

    do_plot(generate_ours,
            keep, scores, 1,
            "Attacked\n",
            metric='auc'
            )

    # do_plot(functools.partial(generate_ours, fix_variance=True),
    #         keep, scores, 1,
    #         "Ours (online, fixed variance)\n",
    #         metric='auc'
    #         )
    #
    # do_plot(functools.partial(generate_ours_offline),
    #         keep, scores, 1,
    #         "Ours (offline)\n",
    #         metric='auc'
    #         )
    #
    # do_plot(functools.partial(generate_ours_offline, fix_variance=True),
    #         keep, scores, 1,
    #         "Ours (offline, fixed variance)\n",
    #         metric='auc'
    #         )
    #
    # do_plot(generate_global,
    #         keep, scores, 1,
    #         "Global threshold\n",
    #         metric='auc'
    #         )

    plt.semilogx()
    plt.semilogy()
    plt.xlim(1e-5, 1)
    plt.ylim(1e-5, 1)
    plt.xlabel("False Positive Rate")
    plt.ylabel("True Positive Rate")
    plt.plot([0, 1], [0, 1], ls='--', color='gray')
    plt.subplots_adjust(bottom=.18, left=.18, top=.96, right=.96)
    plt.legend(fontsize=8)
    plt.savefig(f"fprtpr-{'targets' if TARGETS_ONLY else 'all'}.png")
    plt.show()


fig_fpr_tpr()

