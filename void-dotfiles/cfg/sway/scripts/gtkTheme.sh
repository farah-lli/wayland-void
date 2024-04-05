#!/bin/bash

## Set GTK Themes, Icons, Cursor and Fonts
THEME='Gruvbox-Dark'
ICONS='Nordzy-yellow-dark'
FONT='JetBrainsMono Nerd Font 11'
CURSOR='Bibata-Modern-Amber'
SCHEMA='gsettings set org.gnome.desktop.interface'

apply_themes() {
  ${SCHEMA} gtk-theme "$THEME"
  ${SCHEMA} icon-theme "$ICONS"
  ${SCHEMA} cursor-theme "$CURSOR"
  ${SCHEMA} font-name "$FONT"
}

apply_themes
