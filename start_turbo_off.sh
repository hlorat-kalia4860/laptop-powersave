#!/bin/bash
if grep "0" /sys/class/power_supply/ACAD/online
then 
source /usr/bin/turbo_off.sh
else
source /usr/bin/turbo_on.sh
fi
