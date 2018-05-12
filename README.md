## Getting Started ##
---------------

To get started with OMNI sources to build TWRP, you'll need to get
familiar with [Git and Repo](https://source.android.com/source/using-repo.html).

To initialize your local repository using the OMNIROM trees to build TWRP, use a command like this:

    repo init -u https://github.com/zefie/twrp_minimal_lgg6_manifest.git -b twrp-8.1
    
Then to sync up:

    repo sync

**Zefie Note**:

Every time you sync, do the following:

     cd kernel/lge/msm8996
     git submodule init
     git submodule update
     KERNEL_RECOVERY=1 .zefie/scripts/create_defconfigs.sh
     cd ../../..

Then to build:

     export ALLOW_MISSING_DEPENDENCIES=true
     export CONFIG_NO_ERROR_ON_MISMATCH=y
     . build/envsetup.sh
     lunch omni_<device>-eng
     mka recoveryimage

