#!/bin/bash
if grep "0" /sys/class/power_supply/ADP1/online
then 
source /usr/bin/nmi_off.sh
else
source /usr/bin/nmi_on.sh
fi
