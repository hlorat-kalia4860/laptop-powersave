#!/bin/bash
echo 'Command list:'
echo 'turbo-on'
echo 'turbo-off'
echo 'hdd-apm-on'
echo 'hdd-apm-off'
echo 'audio-on'
echo 'audio-off'
echo 'bluet-on'
echo 'bluet-off'
echo 'nmi-on'
echo 'nmi-off'
echo 'vmwts-on'
echo 'vmwts-off'
echo 'light-on'
echo 'light-off'
while true
do
read -p "Enter command:  " answer
case $answer in
turbo-on) sudo systemctl enable turbo | sudo systemctl start turbo;;
turbo-off) sudo systemctl disable turbo | sudo systemctl stop turbo;;
hdd-apm-on) sudo systemctl enable APM | sudo systemctl start APM;;
hdd-apm-off) sudo systemctl disable APM |sudo systemctl stop APM;;
audio-on) sudo systemctl enable audio_powersave | sudo systemctl start audio_powersave;;
audio-off) sudo systemctl disable audio_powersave |sudo systemctl stop audio_powersave;;
bluet-on) sudo systemctl enable bluet_off | sudo systemctl start bluet_off;;
bluet-off) sudo systemctl disable bluet_off |sudo systemctl stop bluet_off;;
nmi-on) sudo systemctl enable nmi | sudo systemctl start nmi;;
nmi-off) sudo systemctl disable nmi | sudo systemctl stop nmi;;
vmwts-on) sudo systemctl enable vmwts | sudo systemctl start vmwts;;
vmwts-off) sudo systemctl disable vmwts | sudo systemctl stop vmwts;;
light-on) sudo systemctl enable light | sudo systemctl start light;;
light-off) sudo systemctl disable light | sudo systemctl stop light;;
esac
done
