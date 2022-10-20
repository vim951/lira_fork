# Context

This is a fork from [carlini/privacy](https://github.com/carlini/privacy) which only utilizes the *better-mi* branch.


# Installation

```
conda create --name venv python==3.8.10
conda activate venv
```

```
pip install scipy sklearn numpy matplotlib
```

```
conda install -c conda-forge cudatoolkit=11.3 cudnn=8.2.0
conda install -c nvidia/label/cuda-11.3.1 cuda-nvcc
```

```
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CONDA_PREFIX/lib/
pip install tensorflow==2.9.2
python3 -c "import tensorflow as tf; print(tf.config.list_physical_devices('GPU'))"
```

```
pip install --upgrade objax
RELEASE_URL="https://storage.googleapis.com/jax-releases/jax_cuda_releases.html"
JAX_VERSION=`python3 -c 'import jax; print(jax.__version__)'`
pip uninstall -y jaxlib
pip install -f $RELEASE_URL jax[cuda]==$JAX_VERSION
export XLA_PYTHON_CLIENT_PREALLOCATE=false
```

# Execute code

```
bash scripts/train_large.sh
bash scripts/all.sh
```

```
python point_selection.py
bash scripts/train_without_x.sh
bash scripts/all.sh
```
