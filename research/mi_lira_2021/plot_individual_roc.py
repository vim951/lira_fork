import os
import scipy.stats
import numpy as np
import matplotlib.pyplot as plt
from sklearn.metrics import auc, roc_curve
from scipy import interpolate
from absl import app, flags

FLAGS = flags.FLAGS


WD = '/home/victor/lf2'
# targets_only = False
# same_class_only = True
# log_scale = True
#
# assert not same_class_only or not targets_only


y = np.load('/home/victor/lf2/exp/cifar10/y_train.npy')


def sweep(score, x):
    """
    Compute a ROC curve and then return the FPR, TPR, AUC, and ACC.
    """
    fpr, tpr, _ = roc_curve(x, -score)
    acc = np.max(1 - (fpr + (1 - tpr)) / 2)
    return fpr, tpr, auc(fpr, tpr), acc


def get_all_targets():
    result = np.zeros((50_000, )).astype('bool')
    for a in range(FLAGS.num_models):
        samples = np.load(os.path.join(WD, 'npy', f'targets_{FLAGS.run_id}_{a}.npy'))
        result[samples] = True
    return result


def load_data(root, max_model_id, target_model_id, all_targets):
    """
    Load our saved scores and then put them into a big matrix.
    """
    global scores, keep
    scores = []
    keep = []

    samples = np.load(f'/home/victor/lf2/npy/targets_{FLAGS.run_id}_{target_model_id % 10}.npy')

    for model_id in list(range(max_model_id))+[target_model_id]:

        if model_id == target_model_id:
            f = f'experiment-{model_id}'
        else:
            f = f'experiment-{model_id}_{max_model_id}'
        last_epoch = sorted(os.listdir(os.path.join(root, f, "scores")))

        k1 = np.load(os.path.join(root, f, "keep.npy"))
        s1 = np.load(os.path.join(root, f, "scores", last_epoch[-1]))

        if FLAGS.targets_only:
            # k1 = k1[samples]
            k1 = k1[all_targets]
        elif FLAGS.same_class_only:
            k1 = k1[y == y[samples[0]]]

        if FLAGS.targets_only:
            # s1 = s1[samples]
            s1 = s1[all_targets]
        elif FLAGS.same_class_only:
            s1 = s1[y == y[samples[0]]]

        scores.append(s1)
        keep.append(k1)

    scores = np.array(scores)
    keep = np.array(keep)[:, :scores.shape[1]]

    print(scores.shape)
    print(keep.shape)

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


def fig_fpr_tpr():

    # plt.figure(figsize=(12, 9))

    if FLAGS.log_scale:
        x_values = np.logspace(-3, 0, 1_000)
    else:
        x_values = np.linspace(0, 1, 1_000)
    y_values = [[], [], []]
    auc_values = [[], [], []]

    all_targets = get_all_targets()

    for b in range(3):
        if b == 0:
            idx = 10_000 + FLAGS.model_id
        elif b == 1:
            idx = 10_000 + FLAGS.run_id * 1_000 + 100 + FLAGS.model_id
        else:
            idx = 10_000 + FLAGS.run_id * 1_000 + FLAGS.model_id
        load_data(f"{WD}/exp/cifar10/", 1024, idx, all_targets)
        prediction, answers = generate_ours(keep[:-1], scores[:-1], keep[-1:], scores[-1:])
        print(np.array(prediction).shape, np.array(answers, dtype=bool).shape)
        print(np.array(prediction), np.array(answers, dtype=bool))
        fpr, tpr, auc, acc = sweep(np.array(prediction), np.array(answers, dtype=bool))
        f = interpolate.interp1d(fpr, tpr, 'previous')
        y_values[b].append(f(x_values))
        auc_values[b].append(auc)
        plt.plot(x_values, np.mean(y_values[b], 0), label=f'{16*b} points removed / target (auc={np.mean(auc_values[b]):.2f})')

    if FLAGS.log_scale:
        plt.semilogx()
        plt.semilogy()
    plt.xlim(x_values.min(), 1)
    plt.ylim(x_values.min(), 1)
    plt.xlabel("False Positive Rate")
    plt.ylabel("True Positive Rate")
    plt.plot([0, 1], [0, 1], ls='--', color='gray')
    plt.grid()
    plt.legend(loc='lower right')
    if FLAGS.targets_only:
        plt.title('Targets only')
    elif FLAGS.same_class_only:
        plt.title('Same class only')
    else:
        plt.title('All points')

    name = f'{FLAGS.model_id}'

    if FLAGS.same_class_only:
        name += ' - same class only'
    elif FLAGS.targets_only:
        name += ' - targets only'
    else:
        name += ' - all points'

    if FLAGS.log_scale:
        name += ' - log'
    else:
        name += ' - lin'

    plt.savefig(f'{WD}/{FLAGS.run_id} - {name}.png')

    plt.show()


def main(argv):
    np.random.seed(123)
    fig_fpr_tpr()


if __name__ == '__main__':
    flags.DEFINE_integer('num_models', -1, '...')
    flags.DEFINE_integer('model_id', -1, '...')
    flags.DEFINE_integer('run_id', -1, '...')
    flags.DEFINE_bool('targets_only', False, '...')
    flags.DEFINE_bool('same_class_only', False, '...')
    flags.DEFINE_bool('log_scale', False, '...')
    app.run(main)

