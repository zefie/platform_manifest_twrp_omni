<p align="center">
  <img width="520" height="200" src="logo.jpg">
</p>

<a href="https://sourceforge.net/projects/orangefox/files"><img alt="Download OrangeFox" src="https://a.fsdn.com/con/app/sf-download-button" width=276 height=48 srcset="https://a.fsdn.com/con/app/sf-download-button?button_size=2x 2x"></a>

<a title="Crowdin" target="_blank" href="https://crowdin.com/project/orangefox"><img src="https://d322cqt584bo4o.cloudfront.net/orangefox/localized.svg"></a>

---------------

## Prepare to build ##

update all packages

    sudo apt update && sudo apt upgrade -y
    
use a [script](https://github.com/akhilnarang/scripts) for download all requare require packages

    cd ~ && sudo apt install git -y && git clone https://github.com/akhilnarang/scripts && cd scripts && sudo bash setup/android_build_env.sh && sudo bash setup/install_android_sdk.bash

## Sync and Build manually ##
---------------

To get started with building OrangeFox Recovery, you'll need to get
familiar with [Git and Repo](https://source.android.com/source/using-repo.html).

To initialize your local repository using the minimal-manifest-twrp omni trees to build OrangeFox, use a command like this:

    repo init -u https://gitlab.com/OrangeFox/Manifest.git -b fox_9.0
    
To initialize a shallow clone (recommend), which will save even more space, use a command like this:

    repo init --depth=1 -u https://gitlab.com/OrangeFox/Manifest.git -b fox_9.0

Then to sync up:

    repo sync -j8 --force-sync

Then to build:

     cd <source-dir>
     . build/envsetup.sh && export ALLOW_MISSING_DEPENDENCIES=true 
     lunch omni_<device>-eng && mka recoveryimage
     

