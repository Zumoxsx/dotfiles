#!/bin/sh

opcion=$(echo "⏻

󰒲
" | rofi -dmenu -i -p ' 󰋜:' -width 10 -xoffset -0 -yoffset -0 -location 0 -lines 3)

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
    )  
        bash /home/zumo/.config/openbox/desktop/random/script/wallpaper.sh
        ;;
    *)
        echo "Exit"
        ;;
esac
