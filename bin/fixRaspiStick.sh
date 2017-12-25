#!/bin/bash

DEVICE=$1
MOUNT=.mnt

if [ ! -f $DEVICE ]; then
	echo "image ($DEVICE) not found"
	exit -1
fi

mkdir -p $MOUNT

FPSTART=$( fdisk -l $DEVICE | grep FAT32 | awk '{ print $2 }')
LPSTART=$( fdisk -l $DEVICE | grep Linux | awk '{ print $2 }')

mount $DEVICE1 $MOUNT
touch $MOUNT/ssh
umount $MOUNT

rmdir $MOUNT
