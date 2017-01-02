#!/sbin/sh
# Written by Tkkg1994

mount /dev/block/platform/155a0000.ufs/by-name/USERDATA /data

find /data -maxdepth 1 -type d ! -path "/data" ! -path "/data/media" | xargs rm -rf

exit 10

