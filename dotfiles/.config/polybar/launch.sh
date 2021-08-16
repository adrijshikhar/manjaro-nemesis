#!/usr/bin/env bash

#==============================================================#
#=====[ LAUNCHER
#==============================================================#
DIR="$HOME/.config/polybar"
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -q bar-eDP-1 -c "$DIR"/config.ini &
polybar -q bar-HDMI-1-0 -c "$DIR"/config.ini &
