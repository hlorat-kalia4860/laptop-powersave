#!/bin/bash
if grep "0" /sys/class/power_supply/ACAD/online
then 
source /usr/bin/audio_powersave_on.sh
else
source /usr/bin/audio_powersave_off.sh
fi
