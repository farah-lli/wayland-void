#!/bin/sh
#==========================#
# Background Daemon:       #
#==========================#
wbg ~/pix/wallpapers/WITCHER.png &
#==========================#
#  App Daemon              #
#==========================#
fnott &
udiskie &
nm-applet &
swayidle -w &
pipewire &
pipewire-pulse &
