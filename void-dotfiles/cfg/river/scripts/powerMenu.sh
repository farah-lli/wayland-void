#!/bin/bash

options=$(printf "POWER OFF\nREBOOT\nSUSPEND\nHIBERNATE\nLOCK\nLOG OUT")

selected=$(echo -e "$options" | wmenu -il 6 -f "JetBrains Mono Nerd Font 12" -p "POWER MENU: " -N 1d2021 -n ebdbb2 -M 689d6a -m 1d2021 -S 689d6a -s 1d2021)

case "$selected" in
	"POWER OFF") doas poweroff ;;
	"REBOOT") doas reboot ;;
	"SUSPEND") doas zzz ;;
	"HIBERNATE") doas zzz ;;
	"LOCK") waylock -init-color 0x1d2021 -input-color 0x689d6a -fail-color 0xcc241d ;;
	"LOG OUT") riverctl exit ;;
	*) exit 1 ;;
esac
