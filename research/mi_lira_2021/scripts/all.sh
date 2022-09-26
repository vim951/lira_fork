bash scripts/train_large.sh
python inference.py --logdir=exp/cifar10/
python score.py exp/cifar10/
python generate_embeddings.py --logdir=exp/cifar10/
