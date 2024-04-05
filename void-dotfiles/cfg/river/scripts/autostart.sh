#!/bin/sh
#==========================#
# Background Daemon:       #
#==========================#
wbg ~/pix/wallpapers/WITCHER.png &
#==========================#
#  App Daemon              #
#==========================#
fnott &
killall waybar; waybar &
udiskie &
nm-applet &
someblocks &
swayidle -w &
pipewire &
pipewire-pulse &
