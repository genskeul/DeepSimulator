#!/bin/bash
source $CONDA_PREFIX/etc/profile.d/conda.sh

#-> 1. install tensorflow_cdpm
conda remove --name tensorflow_cdpm --all -y
conda create --name tensorflow_cdpm python=2.7 -y
conda activate tensorflow_cdpm
conda install tensorflow==1.2.1
conda install tflearn==0.3.2
conda install tqdm==4.19.4
conda install scipy==0.18.1
conda install h5py==2.7.1
conda install numpy==1.13.1
conda install scikit-learn==0.20.3
conda install biopython==1.74
conda deactivate

#-> 2. install basecaller
#--| 2.1 install albacore_2.3.1
cd base_caller/albacore_2.3.1/
	./download_and_install.sh
cd ../../

#--| 2.2 install guppy_3.1.5
cd base_caller/guppy_3.1.5/
	./download_and_install.sh
cd ../../
