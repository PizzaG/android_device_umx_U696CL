#!/bin/bash

## OrangeFox
#############################
export USE_CCACHE=1
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1
. build/envsetup.sh
m clean
lunch twrp_U696CL-eng
mka recoveryimage
echo
echo " Recovery Should Be Built"
echo ""
mv $OUT/recovery.img ~/Desktop/OranegFox_11_Recovery-UMX_U696CL.img
#cd /media/pizzag/Android/Recoveries/TWRP/10
#make clean
read
#############################
#############################

