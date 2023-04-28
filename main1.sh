#!/bin/bash
echo 'Command list:'
echo '-turbo-on'
echo '-turbo-off'
echo '-hdd-apm-on'
echo '-hdd-apm-off'
echo '-audio-on'
echo '-audio-off'
echo '-bluet-on'
echo '-bluet-off'
echo '-nmi-on'
echo '-nmi-off'
echo '-vmwts-on'
echo '-vmwts-off'
echo '-light-on'
echo '-light-off'
while true
do
read -p "Enter command:  " answer
case $answer in
-turbo-on) sudo systemctl enable turbo | sudo systemctl start turbo;;
-turbo-off) sudo systemctl disable turbo | sudo systemctl stop light;;
-hdd-apm-on) sudo systemctl enable APM | sudo systemctl start APM;;
-hdd-apm-off) sudo systemctl disable APM |sudo systemctl stop light;;
-audio-on) sudo systemctl enable audio_powersave | sudo systemctl start audio_powersave;;
-audio-off) sudo systemctl disable audio_powersave |sudo systemctl stop light;;
-bluet-on) sudo systemctl enable bluet_off | sudo systemctl start bluet_off;;
-bluet-off) sudo systemctl disable APM |sudo systemctl stop light;;
-nmi-on) sudo systemctl enable nmi | sudo systemctl start nmi;;
-nmi-off) sudo systemctl disable | nmi sudo systemctl stop light;;
-vmwts-on) sudo systemctl enable virtual_memory_write_time | sudo systemctl start virtual_memory_write_time;;
-vmwts-off) sudo systemctl disable virtual_memory_write_time | sudo systemctl stop light;;
-light-on) sudo systemctl enable light | sudo systemctl start light;;
-light-off) sudo systemctl disable light | sudo systemctl stop light;;
esac
done