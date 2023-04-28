#!/bin/bash
if grep "1" /sys/block/sd*/queue/rotational
then
sudo hdparm -B 248 -S 0 /dev/sd*
fi