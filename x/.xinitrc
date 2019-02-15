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
xhost local:root

#start compositor
#$(sleep 1 && compton -CGb) &

#background
feh  --bg-fill ~/pictures/wallpaper.png

#connman
#cmst -m

#start i3
exec i3
