#/bin/bash

#tail -n 14 README.md | head -n5 | cut -d' ' -f6-

cd kernel/lge/msm8996
git submodule init
git submodule update
KERNEL_RECOVERY=1 .zefie/scripts/create_defconfigs.sh
cd ../../..

