import matplotlib.pyplot as plt
import numpy as np
import tensorflow as tf
import tensorflow_datasets as tfds
from math import ceil
from sklearn.manifold import TSNE
from sklearn.neighbors import NearestNeighbors
from glob import glob
from tqdm import tqdm
import sys


np.random.seed(123)

NUM_TARGETS = int(sys.argv[1])
TARGET_SCR = float(sys.argv[2])
RADIUS = float(sys.argv[3])
METRIC = str(sys.argv[4])
RUN_ID = int(sys.argv[5])
N_JOBS = int(sys.argv[6])
TARGET_ID = int(sys.argv[7])

print('')
print(f'num_targets  =  {NUM_TARGETS}')
print(f'scr          =  {TARGET_SCR}')
print(f'radius       =  {RADIUS}')
print(f'metric       =  {METRIC}')
print(f'id           =  {RUN_ID}')
print(f'n_jobs       =  {N_JOBS}')
print(f'target_id    =  {TARGET_ID}')
print('')


def find_same_class_neighbor_ratio(latent_space, targets_list, radius):
    '''
    Find ratio of same-class points as target point given radius
    returns:  list of ratio of same-class points per target point
    '''
    ratio_list = []
    # Define a radius per point
    neigh = NearestNeighbors(metric=METRIC, radius=radius, n_jobs=N_JOBS)
    # Compute the nearest neighbors
    neigh.fit(latent_space)
    neigh_result = neigh.radius_neighbors(latent_space)

    # iterate for every point
    for i in range(len(latent_space)):
        neigh_idxs = neigh_result[1][i]

        # remove the point itself as its neighbor
        neigh_idxs = np.delete(neigh_idxs, np.argwhere(neigh_idxs == i))
        target_labels = targets_list[neigh_idxs]

        # scr = # of same-class neighbors / # neighbors
        same_class_ratio = (target_labels == targets_list[i]).sum() / len(neigh_idxs) if len(neigh_idxs) >= 32 / TARGET_SCR else 10
        ratio_list.append(same_class_ratio)

    return np.asarray(ratio_list)


def find_k_neighbors(targets, latent_space, k, label_list, radius, c, same_class, unique, keep):
    '''
    Find nearest same-class neighbors idx of each point given radius.
    Finds a slightly larger neighbor list, then prunes for any neighbor that is/are also queries.
    Params:
    targets [list] = list of indices

    returns:  list of list of neighbors idx for each point
    '''
    neighbors = []
    assert len(latent_space) == len(label_list)
    # Define a radius per point
    neigh = NearestNeighbors(metric=METRIC, radius=radius, n_jobs=N_JOBS)

    assert same_class, "not implemented"

    for t in tqdm(targets):

        keep_cp = np.copy(keep)
        keep_cp[t] = True

        if same_class:
            same_class_idxs = np.where((label_list == label_list[t]) & keep_cp)[0]
        else:
            same_class_idxs = np.arange(len(latent_space))

        # Compute the nearest neighbors
        sub_space = latent_space[same_class_idxs]
        neigh.fit(sub_space)
        # map idx to sub space
        mapped_idx = np.where(same_class_idxs == t)[0].item()

        if not same_class:
            assert mapped_idx == t, print(mapped_idx, t)

        # reshape since single query
        neigh_result = neigh.kneighbors(sub_space[mapped_idx].reshape(1, -1), n_neighbors=k + c, return_distance=False)

        # map back to original indices
        neigh_result = same_class_idxs[neigh_result]

        # edge case if query is nearest neighbor to another (including query being neighbor to itself)
        to_remove_idxs = np.argwhere(np.isin(neigh_result, targets, assume_unique=True))

        neigh_result = np.delete(neigh_result, to_remove_idxs)

        neighbors.append(neigh_result[:k])

    neighbors = np.asarray(neighbors)
    if unique:
        return np.unique(np.concatenate(neighbors, axis=0))
    return neighbors


classes = ['airplane', 'automobile', 'bird', 'cat', 'deer', 'dog', 'frog', 'horse', 'ship', 'truck']

y = np.load('/home/victor/lf2/exp/cifar10/y_train.npy')

target_idx = None
target_mask = None

keep = np.load(f'/home/victor/lf2/exp/cifar10/experiment-{TARGET_ID}_1024/keep.npy')
emb = np.load(f'/home/victor/lf2/exp/cifar10/experiment-{TARGET_ID}_1024/embeddings/0000000100.npy')
emb = emb.mean(2).mean(1)
emb = (emb - emb.min()) / (emb.max() - emb.min())

scr = find_same_class_neighbor_ratio(emb, y, RADIUS)

scr_fitness = np.abs(scr - TARGET_SCR)

best_class = None
best_avg_fitness = 10
for c in range(10):
    mask_keep_and_class = (y == c) & keep
    selected_points = np.argsort(scr_fitness[mask_keep_and_class])[:NUM_TARGETS]
    class_scr_fitness = np.mean((scr_fitness[mask_keep_and_class])[selected_points])
    if class_scr_fitness < best_avg_fitness:
        best_avg_fitness = class_scr_fitness
        best_class = c

target_class = best_class
mask_keep_and_class = (y == target_class) & keep
target_idx = np.argsort(scr_fitness[mask_keep_and_class])[:NUM_TARGETS]
target_idx = (np.arange(y.shape[0])[mask_keep_and_class])[target_idx]
target_mask = np.full(y.shape[0], False)
target_mask[target_idx] = True

np.save(f'/home/victor/lf2/npy/idx_to_remove_{RUN_ID}_{TARGET_ID}_{0}.npy', ~keep)

for i in [16, 32]:
    scr_neighs = find_k_neighbors(
        targets=target_idx,
        latent_space=emb,
        k=i,
        label_list=y,
        radius=RADIUS,
        c=NUM_TARGETS,
        same_class=True,
        unique=True,
        keep=keep
    )
    to_remove = ~keep
    to_remove[scr_neighs] = True
    np.save(f'/home/victor/lf2/npy/idx_to_remove_{RUN_ID}_{TARGET_ID}_{i}.npy', to_remove)

np.save(f'/home/victor/lf2/npy/targets_{RUN_ID}_{TARGET_ID}.npy', target_idx)

