#!/bin/bash
if grep "0" /sys/class/power_supply/ADP1/online
then 
source /usr/bin/time_up.sh
else
source /usr/bin/time_down.sh
fi
