#!/bin/sh

# load .Xresources file
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# disable bell
xset -b

# enable numlock
numlockx on &

/usr/local/bin/statusbar &
xautolock -time 10 -locker slimlock &
xautolock -time 20 -locker "sudo pm-suspend" -detectsleep &
xbindkeys

# set background
feh --bg-center /usr/local/etc/arch-linux.jpg
