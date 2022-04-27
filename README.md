# TPU VM

Bag of scripts to faster training on TPU VM

## How to use

- Create new TPUVM-V38 with name 'learnjax' at zone `europe-west-4a`: `./bin_local/v38.sh learnjax`
- Setup conda environment `tpuvm` & `git-lfs`: `./bin_tpuvm/setup_conda.sh`
- Append default python path to current virtual env: `./bin_tpuvm/path.env`
    - Usecase: You created a conda environment and fresh install pytorch, but
    somehow pytorch couldn't recognize tpu. A work around is just simply append
    default python3 path to the current env

- Mount 300GB of ram to `$HOME/hfcache`: `./bin_tpuvm/mount_tmpfs.sh`
    - Usecase: You want to prepare a dataset but 90GB disk is not enough, you
    can consider using `tmpfs`
    - You can run `sudo umount -f $HOME/hfcache` to unmount

- Set XRT config variable for `torch_xla`: `sh ./bin_tpuvm/xrt.env`
