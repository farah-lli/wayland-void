#!/bin/sh
exec swayidle -w \
	timeout 10 "swaylock" \
	timeout 10 "wlr-randr --output eDP-1 --off" resume "wlr-randr --output eDP-1 --on" \
    before-sleep "swaylock"
