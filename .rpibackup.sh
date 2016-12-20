#!/bin/bash
# script to backup Pi SD card
# 2015-11-28
#DSK='disk4'
# Find disk with LInux partition (works for Raspbian)
export DSK=`diskutil list | grep "Linux" | cut -c 69-73`
if [ $DSK ]; then
    echo $DSK
else
    echo "Disk not found"
    exit
fi
diskutil unmountDisk /dev/$DSK
echo please wait - This takes some time
echo Ctl+T to show progress!
time sudo dd if=/dev/r$DSK bs=4m | gzip -9 > ~/temp/Pi/Piback.img.gz
#rename to current date
echo compressing completed - now renaming
mv -n ~/temp/Pi/Piback.img.gz ~/temp/Pi/Piback`date +%Y%m%d`.img.gz
