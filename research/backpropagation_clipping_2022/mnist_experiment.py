# This file was taken from
# https://github.com/uvm-plaid/backpropagation-clipping
# With modifications to train on poisoned models

import sys
import numpy as np
import torch
import torch.nn as nn
import torch.optim as optim
from torch.autograd import Variable
from torch.utils.data import TensorDataset
from torch.utils.data import DataLoader
import pickle
import random


import time
from torchvision import datasets, transforms

import upstream_clipping as uc


transform=transforms.Compose([
    transforms.ToTensor(),
    #transforms.Lambda(lambda x: torch.flatten(x)),
    #transforms.Normalize((0.1307,), (0.3081,))
    ])


which = sys.argv[2]
exid = int(sys.argv[1])

x = np.load("mnistx.npy")
y = np.load("mnisty.npy")

xt = np.load("mnistxtest.npy")
yt = np.load("mnistytest.npy")

if which == 'normal':

    
    dataset1 = torch.utils.data.TensorDataset(torch.tensor(x), torch.tensor(y))
elif which == 'backdoor':

    x[-1] = xt[exid]

    x[-1,:,:6,:6] = 0
    x[-1,:,:6:2,:6] += 1
    x[-1,:,:6,:6:2] += 1
    x[-1:,:6,:6] %= 2
    
    y[-1] = (yt[exid]+1)%10
    
    dataset1 = torch.utils.data.TensorDataset(torch.tensor(x), torch.tensor(y))
    

dataset2 = datasets.MNIST('data', train=False,
                   transform=transform)

n_features = 784
n_classes = 10

class Classifier(nn.Module):
    def __init__(self):
        super(Classifier, self).__init__()
        self.network = nn.Sequential(
            torch.nn.Conv2d(1, 16, 8, 2, padding=3, bias=False),
            torch.nn.ReLU(),
            torch.nn.MaxPool2d(2, 1), 
            torch.nn.Conv2d(16, 32, 4, 2, bias=False),
            torch.nn.ReLU(), 
            torch.nn.MaxPool2d(2, 1), 
            torch.nn.Flatten(), 
            torch.nn.Linear(32 * 4 * 4, 32, bias=False),
            torch.nn.ReLU(), 
            torch.nn.Linear(32, 10, bias=False),
            nn.LogSoftmax(dim=1))

        self.l1_clip = [self.network[1],
                       self.network[4]]
        self.l2_clip = [self.network[8],
                       self.network[10]]
        self.input_clip = [self.network[0],
                          self.network[3],
                          self.network[7],
                          self.network[9]]
        
    def forward(self, x):
        return self.network(x)



rr = random.random()
    
for N in range(3000):
    BATCH_SIZE = 4096
    train_loader = torch.utils.data.DataLoader(dataset1, batch_size=BATCH_SIZE)
    test_loader = torch.utils.data.DataLoader(dataset2, batch_size=BATCH_SIZE)
    for epochs in [25]:#[15, 25, 40, 100]:
        for grad_clip in [.01]:#[0.00001, 0.0001, 0.001, 0.01, 0.1]:
            for inp_clip in [1.0]:#[0.1, 1, 5, 10]:
                for rho_i in [1e-5]:#[0.00001, 0.00005, 0.0001]:
                    rho = len(list(Classifier().parameters())) * np.ceil(60000 / BATCH_SIZE) * epochs * rho_i
                    a = time.time()
                    ckpts, model, info = uc.run_experiment(Classifier(), 
                                                train_loader,
                                                rho_i,
                                                epochs,
                                                inp_clip,
                                                grad_clip
                                            )
                    tl, correct, set_len = uc.test(model, test_loader)
                    print(f'MNIST_{BATCH_SIZE}_{epochs}_{grad_clip}_{inp_clip}_{rho_i}', correct/set_len, "accuracy with eps", info['total epsilon'], "in ", time.time()-a, "seconds")
                    exit(0)
                    pickle.dump((info, tl, correct, model, ckpts), open(f'models_exp/MNIST_{BATCH_SIZE}_{epochs}_{grad_clip}_{inp_clip}_{rho_i}_{which}_{exid}_{rr}_{N}.p', 'wb'))
                    if which == 'normal':
                        preds = model(torch.tensor(xt[:100]).cuda()).cpu().detach().numpy()
                    else:
                        preds = model(torch.tensor(xt[exid:exid+1]).cuda()).cpu().detach().numpy()
                    print(preds)
                    pickle.dump((preds), open(f'models_exp/MNIST_{BATCH_SIZE}_{epochs}_{grad_clip}_{inp_clip}_{rho_i}_{which}_{exid}_{rr}_{N}.npy', 'wb'))
