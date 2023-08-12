#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#run dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP & 
#swww init && swww img ~/Desktop/000088220001.jpg &
waybar &
swaybg --image ~/Desktop/wallpapers/notlain.jpg &
#spotifyd &  
#run nm-applet --indicator &
#dunst &
#automatic mounting
nohup easyeffects --gapplication-service
udiskie -ant --menu-update-workaround &
# numlockx on &

# Authentication Agent
/usr/lib/polkit-kde-authentication-agent-1 &
