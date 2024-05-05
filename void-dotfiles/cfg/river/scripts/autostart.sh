#!/bin/sh
#==========================#
# Background Daemon:       #
#==========================#
wbg ~/pix/wallpapers/WITCHER.png &
#==========================#
#  App Daemon              #
#==========================#
killall udiskie;udiskie --smart-tray --file-manager=nemo --terminal=foot &
killall waybar;waybar &
killall fnott;fnott &
killall nm-applet; nm-applet &
killall blueman-applet; blueman-applet &
killall pipewire;pipewire &
killall pipewire-pulse;pipewire-pulse &
