#!/bin/sh
xrandr --output DVI-I-0 --mode 1920x1200 --pos 0x0 --rotate normal --output DVI-I-1 --off --output DP-0 --off --output DP-1 --off --output HDMI-0 --primary --mode 1920x1080 --pos 1920x60 --rotate normal --output DVI-D-0 --off
feh --bg-scale $HOME/Pictures/BG.jpg
