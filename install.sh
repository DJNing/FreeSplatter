# Install PyTorch and xformers
# You may need to install another xformers version if you use a different PyTorch version
# conda install pytorch==2.4.0 torchvision==0.19.0 torchaudio==2.4.0 pytorch-cuda=12.1 -c pytorch -c nvidia
# pip install torch==2.4.0 torchvision==0.19.0 torchaudio==2.4.0 --index-url https://download.pytorch.org/whl/cu121

# conda install -c "nvidia/label/cuda-12.1.0" cuda-toolkit -y

pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu126
conda install -c "nvidia/label/cuda-12.6.0" cuda-toolkit -y

# export CUDA_HOME=$CONDA_PREFIX

# pip install xformers==0.0.29.post2
pip3 install -U xformers --index-url https://download.pytorch.org/whl/cu126

export CUDA_HOME=$CONDA_PREFIX
export CUDA_HOME=$CONDA_PREFIX & pip install git+https://github.com/ashawkey/diff-gaussian-rasterization.git
export CUDA_HOME=$CONDA_PREFIX & pip install git+https://github.com/hbb1/diff-surfel-rasterization.git
export CUDA_HOME=$CONDA_PREFIX & pip install git+https://github.com/NVlabs/nvdiffrast.git
export CUDA_HOME=$CONDA_PREFIX & pip install git+https://github.com/EasternJournalist/utils3d.git@9a4eb15e4021b67b12c460c7057d642626897ec8
# Install other requirements
pip install -r requirements.txt