# pick an installation prefix to install EasyBuild to (change this to your liking)
EASYBUILD_PREFIX=$HOME/CentOS7/easybuild

# download script
curl -O https://raw.githubusercontent.com/hpcugent/easybuild-framework/develop/easybuild/scripts/bootstrap_eb.py

# bootstrap EasyBuild
python bootstrap_eb.py $EASYBUILD_PREFIX

# update $MODULEPATH, and load the EasyBuild module
module use $EASYBUILD_PREFIX/modules/all
module load EasyBuild
