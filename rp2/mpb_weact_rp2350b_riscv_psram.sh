#!/bin/bash

echo "=========================================================="

echo "Set up riscv32-unknown-elf-gcc rp2 riscv compiling"
export PATH="/opt/rp2350/bin:$HOME/opt/bin:$HOME/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

echo "=========================================================="

echo "Setting up for WEACTSTUDIO RP2350B RISCV"
rm -rf build-WEACTSTUDIO_RP2350B_RISCV_PSRAM
# copy files that will support PSRAM
cp CMakeLists.txt-KAKI5-PSRAM CMakeLists.txt
cp main.c-KAKI5-PSRAM main.c
cp mpconfigport.h-KAKI5-PSRAM mpconfigport.h
cp modmachine.c-KAKI5-PSRAM modmachine.c
cp rp2_flash.c-KAKI5-PSRAM rp2_flash.c

make V=1 BOARD=WEACTSTUDIO_RP2350B_RISCV_PSRAM
echo "Build micropython for WEACTSTUDIO RP2350B w/PSRAM RISCV completed"

# restore original file
cp CMakeLists.txt-ORIG CMakeLists.txt
cp main.c-ORIG main.c
cp mpconfigport.h-ORIG mpconfigport.h
cp modmachine.c-ORIG modmachine.c
cp rp2_flash.c-ORIG rp2_flash.c

echo "Done!"

