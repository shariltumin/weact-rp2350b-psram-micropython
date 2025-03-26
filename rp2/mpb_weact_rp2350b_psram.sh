#!/bin/bash

echo "=========================================================="

echo "Set up gcc-arm-none-eabi to 10-2021 for stm32, nrf and rp2 compiling"
export PATH="$HOME/opt/bin:$HOME/bin:$HOME/disk/arm/gcc-arm-none-eabi-10.3-2021.10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

echo "=========================================================="

echo "Setting up for WEACTSTUDIO RP2350B"
rm -rf build-WEACTSTUDIO_RP2350B_PSRAM

# copy files that will support PSRAM
cp CMakeLists.txt-KAKI5-PSRAM CMakeLists.txt
cp main.c-KAKI5-PSRAM main.c
cp mpconfigport.h-KAKI5-PSRAM mpconfigport.h
cp modmachine.c-KAKI5-PSRAM modmachine.c
cp rp2_flash.c-KAKI5-PSRAM rp2_flash.c

make V=1 BOARD=WEACTSTUDIO_RP2350B_PSRAM
echo "Build micropython for WEACTSTUDIO RP2350B w/PSRAM completed"

# restore original file
cp CMakeLists.txt-ORIG CMakeLists.txt
cp main.c-ORIG main.c
cp mpconfigport.h-ORIG mpconfigport.h
cp modmachine.c-ORIG modmachine.c
cp rp2_flash.c-ORIG rp2_flash.c
echo "Done!"

