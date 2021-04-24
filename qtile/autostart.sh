#!/bin/sh

#Set wallpapers
xwallpaper --output eDP-1 --stretch ~/Pictures/Wallpapers/hex_fade.jpg --output HDMI-2 --stretch ~/Pictures/Wallpapers/rocket_nord.png &

# Start compositor
picom -b &

# Start notifications
dunst &

# Lock number pad
numlockx &

# Start Nextcloud sync
nextcloud &
