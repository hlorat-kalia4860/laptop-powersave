#!/bin/bash
if grep "0" /sys/class/power_supply/ACAD/online
then 
source /usr/bin/APM_redactor_off.sh
else
source /usr/bin/APM_redactor_on.sh
fi
