#!/bin/bash
cd /
cd usr
cd bin
sudo rm APM_redactor_off.sh APM_redactor_on.sh audio_powersave_off.sh audio_powersave_on.sh audio_start.sh bluet_off.sh light.sh nmi_off.sh nmi_on.sh nmi_service_start.sh start_APM_redactor.sh start_turbo_off.sh swap_on.sh time_down.sh time_up.sh turbo_off.sh turbo_on.sh vmwts_start.sh
cd /
cd etc
cd systemd
cd system
sudo rm APM.service audio_powersave.service bluet_off.service light.service nmi.service turbo.service vmwts.service
sudo systemctl stop APM.service audio_powersave.service bluet_off.service light.service nmi.service turbo.service vmwts.service
sudo systemctl disable APM.service audio_powersave.service bluet_off.service light.service nmi.service turbo.service vmwts.service