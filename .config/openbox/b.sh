   #!/bin/sh
            revert() {
              xset dpms 0 0 0
            }
            trap revert HUP INT TERM
            xset +dpms dpms 5 5 5
            i3lock -n -b /home/zumo/.config/openbox/desktop/random/wallpaper/Wallpaper.png
            revert
