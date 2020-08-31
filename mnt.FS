#!/bin/bash

lsblk
echo "Select a Partition to Mount:"
read PART
mount "/dev/$PART" /mnt
