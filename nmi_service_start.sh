#!/bin/bash
if grep "0" /sys/class/power_supply/ACAD/online
then 
source /usr/bin/nmi_watchdog_service/nmi_off.sh
else
source /usr/bin/nmi_watchdog_service/nmi_on.sh
fi
