#!/bin/sh

rofi(){
    [[ $(pgrep rofi | wc -l) == 2 ]] && exit
    pgrep shutdown && shutdown -c

    state=`echo "exit
    logout
    shutdown
    reboot" | rofi -dmenu -p "select"`

    case $state in
        logout)
            hyprctl dispatch exit || loginctl kill-user $(whoami)
            ;;
        shutdown)
            shutdown -P 3
            ;;
        reboot)
            shutdown -r now
            ;;
        *)
            exit
            ;;
    esac
}

wlog(){
    wlogout -p layer-shell &
}

wlog
