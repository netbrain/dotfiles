#!/bin/sh

#xprofile
[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile
[ -f ~/.profile ] && . ~/.profile

#xresources
xrdb -merge ~/.Xresources

#map keybindings
xbindkeys

#xhost
#xhost local:root

#start compositor
$(sleep 1 && compton -CGb) &

#background
feh  --bg-fill ~/x/pictures/wallpaper.jpg

#start i3
exec i3
