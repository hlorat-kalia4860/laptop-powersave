#!/bin/bash
read B < /sys/class/backlight/intel_backlight/brightness
C=$B
let A=$C/2
while true
do
sleep 5
if grep "0" /sys/class/power_supply/ADP1/online
then
sudo echo $A > /sys/class/backlight/intel_backlight/brightness
else
sudo echo $B > /sys/class/backlight/intel_backlight/brightness
fi
done
