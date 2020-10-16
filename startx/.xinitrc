#!/bin/bash

xrandr --output eDP-1 --off  --output HDMI-2 --rotate left
~/.fehbg &
picom --config ~/.config/picom/picom.conf -b

while xsetroot -name "`date`"
do
	sleep 1
done &

exec dwm
