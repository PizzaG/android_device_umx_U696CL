#!/bin/bash

## TWRP
#############################
export USE_CCACHE=1
#export BR_MAINTAINER=PizzaG
. build/envsetup.sh
m clean
lunch twrp_U696CL-eng
mka recoveryimage
echo
echo " Recovery Should Be Built"
echo ""
mv $OUT/recovery.img ~/Desktop/TWRP_11_Recovery-UMX_U696CL.img
#cd /media/pizzag/Android/Recoveries/TWRP/10
#make clean
read
#############################
#############################

