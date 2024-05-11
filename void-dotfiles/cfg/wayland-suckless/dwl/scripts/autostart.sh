#!/bin/sh
#==========================#
# Background Daemon:       #
#==========================#
wbg ~/pix/wallpapers/gnu.png &
#==========================#
#  App Daemon              #
#==========================#
fnott &
udiskie &
nm-applet &
pipewire &
pipewire-pulse &
