#!/bin/bash
if grep "1" /sys/block/sd*/queue/rotational
then
sudo hdparm -B 128 -S 0 /dev/sd*
sudo sed -i '/ swap / s/^/#/' /etc/fstab
fi