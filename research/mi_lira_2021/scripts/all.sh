<<<<<<< HEAD
=======
bash scripts/train_large.sh
>>>>>>> fe0d283a80e4f34ebd28465882cd468b441ea405
python inference.py --logdir=exp/cifar10/
python score.py exp/cifar10/
python generate_embeddings.py --logdir=exp/cifar10/
