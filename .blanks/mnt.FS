#!/bin/bash

lsblk
echo "Select a Partition to Mount:"
read PART
sudo mount "/dev/$PART" /mnt
