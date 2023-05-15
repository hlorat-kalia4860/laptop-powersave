#!/bin/bash
if grep "0" /sys/class/power_supply/ACAD/online
then 
source /usr/bin/VMWTS/time_up.sh
else
source /usr/bin/VMWTS/time_down.sh
fi
