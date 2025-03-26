#!/bin/bash

echo "Backup original files"
# copy original files
cp CMakeLists.txt CMakeLists.txt-ORIG
cp main.c main.c-ORIG
cp mpconfigport.h mpconfigport.h-ORIG
cp modmachine.c modmachine.c-ORIG
cp rp2_flash.c rp2_flash.c-ORIG
echo "Done!"

