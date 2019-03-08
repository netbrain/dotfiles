#!/bin/bash

scrot /tmp/screen.png
convert /tmp/screen.png -blur 0x9 /tmp/screen.png
i3lock -i /tmp/screen.png  
rm /tmp/screen.png  
