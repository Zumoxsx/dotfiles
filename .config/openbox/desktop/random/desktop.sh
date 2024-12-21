#! /bin/bash

pkill tint2
WALLPAPER=$(find /home/zumo/.config/openbox/desktop/random/wallpaper/Wallpaper.png)
LAPTOP_MONITOR="eDP-1"
EXTERNAL_MONITOR="HDMI-1"
feh --bg-fill "$WALLPAPER" --geometry  "$LAPTOP_MONITOR"
feh --bg-fill "$WALLPAPER" --geometry  "$EXTERNAL_MONITOR"
tint2 -c /home/zumo/.config/openbox/desktop/random/randomrc &

