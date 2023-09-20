#!/usr/bin/env bash

# auto starting apps
wlr-randr --output eDP-1 --scale 1.75 
killall -q polkit-gnome-authentication-agent-1 waybar dunst nm-applet
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
waybar -c ~/.config/waybar/river/config-river.jsonc -s ~/.config/waybar/river/river_style.css &
dunst -config ~/.config/dunst/dunstrc &
sh ~/.config/system_scripts/pkill_bc &
nm-applet --indicator &
swayidle -w timeout 300 ~/.config/system_scripts/wayland_session_lock &
