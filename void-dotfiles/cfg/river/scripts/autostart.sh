#!/bin/sh
#==========================#
# Background Daemon:       #
#==========================#
wbg ~/pix/wallpapers/WITCHER.png &
#==========================#
#  App Daemon              #
#==========================#
killall waybar; waybar &
blueman-applet &
nm-applet &
fnott &
udiskie &
swayidle -w &
pipewire &
pipewire-pulse &
