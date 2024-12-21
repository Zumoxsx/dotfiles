#!/bin/sh

opcion=$(echo "⏻

󰒲" | rofi -dmenu -i -theme theme.rasi -p '󰋜:' -width 7 -height 7 -xoffset -0 -yoffset -0 -location 0 -lines 3)

case $opcion in
    ⏻)
        poweroff
        ;;
    )
        reboot
        ;;
    󰒲)
        systemctl suspend
        ;;
    *)
        echo ""
        ;;
esac
