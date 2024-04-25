#!/bin/sh
exec swayidle -w \
	timeout 300 "waylock -init-color 0x1d2021 -input-color 0x689d6a -fail-color 0xcc241d" \
	timeout 600 "wlopm --off eDP-1" resume "wlopm --on eDP-1" \
  before-sleep "waylock -init-color 0x000000"
