INSTALLDIR=/home/xilinx/torch
PYTORCHVER=v1.7.1
CORES=2
TORCHVISIONVER=v0.8.2

apt install libopenblas-dev libblas-dev m4 cmake cython python3-dev python3-yaml python3-setuptools

mkdir $INSTALLDIR && cd $INSTALLDIR
git clone --recursive https://github.com/pytorch/pytorch
git checkout $PYTORCHVER
cd pytorch
git submodule update --init --recursive


export NO_CUDA=1
export NO_DISTRIBUTED=1
export NO_MKLDNN=1 
export NO_NNPACK=1
export NO_QNNPACK=1
export MAX_JOBS=$CORES

python3 setup.py build

sudo -E python3 setup.py install

