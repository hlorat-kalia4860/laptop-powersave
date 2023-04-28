#!/bin/bash
B=$(ex -s +1p +q /sys/class/backlight/intel_backlight/brightness)
C=$B
A=$(($C/2))
while true
do
sleep 5
if grep "0" /sys/class/power_supply/AC0/online
then
sudo echo $A > /sys/class/backlight/intel_backlight/brightness
else
sudo echo $B > /sys/class/backlight/intel_backlight/brightness
fi
done
