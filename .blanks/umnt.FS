#!/bin/bash

lsblk
echo "Select a Partition to Unmount: ie. sda1 "
read PART
sudo umount "/dev/$PART"
