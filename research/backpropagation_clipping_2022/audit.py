import os
import math

import pickle
import numpy as np
from statsmodels.stats import proportion
from scipy import stats
import matplotlib.pyplot as plt

from matplotlib.ticker import PercentFormatter

from mpl_toolkits.axes_grid.inset_locator import (inset_axes, InsetPosition,
                                                  mark_inset)


def compute_epsilon_bernoulli(poison_arr, unpois_arr, threshold, alpha, delta=0):
    # Taken from https://github.com/tensorflow/privacy/blob/master/research/audit_2020/audit.py#L50
    # With the addition of a delta parameter
  
    """For a given threshold, compute epsilon and accuracy."""
    poison_arr, unpois_arr = np.array(poison_arr), np.array(unpois_arr)
    poison_ct = (poison_arr > threshold).sum()
    unpois_ct = (unpois_arr > threshold).sum()
  
    # clopper_pearson uses alpha/2 budget on upper and lower
    # so total budget will be 2*alpha/2 = alpha
    p1, _ = proportion.proportion_confint(poison_ct, poison_arr.size,
                                          alpha, method='beta')
    _, p0 = proportion.proportion_confint(unpois_ct, unpois_arr.size,
                                          alpha, method='beta')
  
    if (p1 <= 1e-5) or (p0 >= 1 - 1e-5):  # divide by zero issues
        return 0#, 0
  
    if (p0 + p1) > 1:  # see Appendix A
        p0, p1 = (1-p1), (1-p0)
      
    epsilon = np.log((p1-delta)/p0)
  
    return epsilon
  
def run(xin, xout):
    thresholds = np.percentile(np.concatenate([xin,xout]), np.arange(1, 100, .1))
    
    eps = [compute_epsilon_bernoulli(xin, xout, threshold, .05, delta) for threshold in thresholds]

    return thresholds[np.argmax(eps)], np.max(eps)

def get_epsilon():
    ID = 18
    LAB = 4

    xout = []
    xin = []
    for f in os.listdir("models"):
      if 'npy' in f and 'normal' in f:
        xout.append(pickle.load(open("models/"+f,"rb"))[ID,LAB])
      if 'npy' in f and 'backdoor_'+str(ID)+"_" in f:
        xin.append(pickle.load(open("models/"+f,"rb"))[0,LAB])
    
    xin = np.array(xin)
    xout = np.array(xout)

    # Try all kinds of thresholds on 2000 models each
    N = 2000
    threshold, eps = run(xin[:N], xout[:N])
    print("Threshold", threshold, "Eps, cheating", eps)

    smaller = min(len(xin), len(xout))
    
    eps = compute_epsilon_bernoulli(xin[N:smaller], xout[N:smaller], threshold, CONF, delta)
    print("Formal eps, correct", eps)
    xin = xin[:100000]
    xout = xout[:100000]

    return xin, xout, eps, threshold

delta = 1e-5
CONF = 1e-10

xin, xout, eps, threshold = get_epsilon()

# We care about losses, not output log probabilities
xin, xout = -xin, -xout

# Stop. Figure time!
plt.figure(figsize=(4,3))

fig, ax1 = plt.subplots(figsize=(5,4))

ax1.hist(xin, 100, alpha=.5, label="Poisoned", weights=np.ones(len(xin)) / len(xin))
ax1.hist(xout, 100, alpha=.5, label="Baseline", weights=np.ones(len(xout)) / len(xout))


ax2 = plt.axes([0,0,1,1])
ip = InsetPosition(ax1, [0.68,0.1,0.4,0.75])

ax2.set_axes_locator(ip)

# Where to do the zoom
T = 2.8
ax2.hist(xin[xin<T], 50, color="C0", alpha=.5, weights=np.ones(len(xin[xin<T])) / len(xin))
ax2.hist(xout[xout<T], 50, color="C1", alpha=.5, weights=np.ones(len(xout[xout<T])) / len(xin))
ax2.yaxis.set_ticklabels([])
ax2.axvline(x=-threshold, ls='--', c="green", alpha=.7)
mark_inset(ax1, ax2, loc1=2, loc2=4, fc="none", ec='0.5')

ax1.yaxis.set_major_formatter(PercentFormatter(1, decimals=1))
ax1.set_ylabel("Probability Density")
ax1.set_xlabel("Loss of model on poisoned example")
ax1.axvline(x=-threshold, ls='--', c="green", alpha=.7, label="Threshold")

ax1.legend(loc='upper left')
plt.subplots_adjust(bottom=.15, left=.15)
plt.savefig("/tmp/a.pdf")
