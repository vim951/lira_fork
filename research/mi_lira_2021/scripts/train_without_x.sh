CUDA_VISIBLE_DEVICES='0' python3 -u train_without_x.py --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --num_experiments 16 --expid 170 --logdir exp/cifar10 &> logs/log_170 &
CUDA_VISIBLE_DEVICES='1' python3 -u train_without_x.py --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --num_experiments 16 --expid 171 --logdir exp/cifar10 &> logs/log_171 &
CUDA_VISIBLE_DEVICES='2' python3 -u train_without_x.py --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --num_experiments 16 --expid 172 --logdir exp/cifar10 &> logs/log_172 &
CUDA_VISIBLE_DEVICES='3' python3 -u train_without_x.py --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --num_experiments 16 --expid 173 --logdir exp/cifar10 &> logs/log_173 &
CUDA_VISIBLE_DEVICES='4' python3 -u train_without_x.py --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --num_experiments 16 --expid 174 --logdir exp/cifar10 &> logs/log_174 &
CUDA_VISIBLE_DEVICES='5' python3 -u train_without_x.py --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --num_experiments 16 --expid 175 --logdir exp/cifar10 &> logs/log_175 &
CUDA_VISIBLE_DEVICES='6' python3 -u train_without_x.py --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --num_experiments 16 --expid 176 --logdir exp/cifar10 &> logs/log_176 &
CUDA_VISIBLE_DEVICES='7' python3 -u train_without_x.py --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --num_experiments 16 --expid 177 --logdir exp/cifar10 &> logs/log_177 &
wait;
