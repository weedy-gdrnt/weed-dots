#!/bin/bash

# CREDITS :
# https://github.com/binnewbs/arch-hyprland on github.
# (https://github.com/binnewbs/arch-hyprland/blob/main/.config/hypr/scripts/wppicker.sh)

# === CONFIG ===
WALLPAPER_DIR="$HOME/Pictures/wallpapers"

cd "$WALLPAPER_DIR" || exit 1

# === handle spaces name
IFS=$'\n'

# === ICON-PREVIEW SELECTION WITH ROFI, SORTED BY NEWEST ===
SELECTED_WALL=$(for a in $(ls -t *.jpg *.png *.gif *.jpeg 2>/dev/null); do echo -en "$a\0icon\x1f$a\n"; done | rofi -dmenu -p "" -show-icons -config /home/weed/.config/rofi/wppicker.rasi)
[ -z "$SELECTED_WALL" ] && exit 1

# === SET WALLPAPER ===
swww img --transition-type any --transition-duration 1.5 "$SELECTED_WALL"

cd ~
python ~/.config/hypr/scripts/updcurwp.py
