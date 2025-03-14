#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/Pictures/wallpaper-archive/Static-Wallpapers"
CURRENT_WALL=$(hyprctl hyprpaper listactive | grep -oP "(?<=wallpaper: ).*")

# Get random wallpaper different from current
WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

# Apply the wallpaper
hyprctl hyprpaper reload ,"$WALLPAPER"
