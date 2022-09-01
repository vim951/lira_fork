import os
import scipy.stats

import numpy as np
import matplotlib.pyplot as plt
from sklearn.metrics import auc, roc_curve
import functools

from glob import glob


def load_data(p, to_ignore):
    """
    Load our saved scores and then put them into a big matrix.
    """
    scores = []
    keep = []

    for root, ds, _ in os.walk(p):
        for f in ds:
            skip = not f.startswith("experiment")
            for ti in to_ignore:
                skip = skip or (ti in f)
            if skip:
                continue
            if not os.path.exists(os.path.join(root, f, "scores")): continue
            last_epoch = sorted(os.listdir(os.path.join(root, f, "scores")))
            if len(last_epoch) == 0: continue
            scores.append(np.load(os.path.join(root, f, "scores", last_epoch[-1])))
            keep.append(np.load(os.path.join(root, f, "keep.npy")))

    scores = np.array(scores)
    keep = np.array(keep)[:, :scores.shape[1]]

    return scores, keep


def generate_ours(keep, scores, check_keep, check_scores, in_size=100000, out_size=100000,
                  fix_variance=False):
    """
    Fit a two predictive models using keep and scores in order to predict
    if the examples in check_scores were training data or not, using the
    ground truth answer from check_keep.
    """
    dat_in = []
    dat_out = []

    print(keep.shape, scores.shape, check_keep.shape, check_scores.shape)

    for j in range(scores.shape[1]):
        dat_in.append(scores[keep[:,j],j,:])  # (9, 2)
        dat_out.append(scores[~keep[:,j],j,:])  # (8, 2)

    in_size = min(min(map(len,dat_in)), in_size)
    out_size = min(min(map(len,dat_out)), out_size)

    dat_in = np.array([x[:in_size] for x in dat_in])
    dat_out = np.array([x[:out_size] for x in dat_out])

    mean_in = np.median(dat_in, 1)
    mean_out = np.median(dat_out, 1)

    print(dat_in.shape, mean_in.shape)

    if fix_variance:
        std_in = np.std(dat_in)
        std_out = np.std(dat_in)
    else:
        std_in = np.std(dat_in, 1)
        std_out = np.std(dat_out, 1)

    prediction = []
    answers = []
    for ans, sc in zip(check_keep, check_scores):
        print(sc.shape, mean_in.shape, std_in.shape)
        pr_in = -scipy.stats.norm.logpdf(sc, mean_in, std_in+1e-30)
        pr_out = -scipy.stats.norm.logpdf(sc, mean_out, std_out+1e-30)
        score = pr_in-pr_out

        prediction.extend(score.mean(1))
        answers.extend(ans)

    return prediction, answers


result = []
for i in range(8):
    print(i)
    expid = 170 + i
    targets = np.load('/mnt/LargeDisk/Victor/targeted_point_removal/targets.npy')  # (16, )
    scores = np.load(f'/home/victor/privacy/research/mi_lira_2021/exp/cifar10/experiment-{expid}_16/scores/0000000100.npy')  # (50_000, 2)
    check_scores = scores  # [targets]  # (16, 2)
    scores, keep = load_data("exp/cifar10/", [f'experiment-{170+j}' for j in range(8) if i != j])  # (17, 50000, 2) (17, 50000)
    check_keep = np.zeros((50_000,)).astype('bool')
    check_keep[targets] = True
    prediction, answers = generate_ours(keep, scores, np.expand_dims(check_keep, axis=0), np.expand_dims(check_scores, axis=0))
    prediction = np.array(prediction)
    print(prediction.shape)
    print(targets.shape)
    result.append(prediction[targets])

np.save('/mnt/LargeDisk/Victor/targeted_point_removal/target_scores', result)

