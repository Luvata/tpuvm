# Setup git-lfs
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get install git-lfs
# Setup conda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b -u -p ~/miniconda3
~/miniconda3/bin/conda init bash
$HOME/miniconda3/bin/conda create -n tpuenv python==3.8.10 --yes
$HOME/miniconda3/bin/conda activate tpuenv
