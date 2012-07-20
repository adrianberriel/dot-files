#!/bin/sh
#
# ~/.xinitrc
#

#DEFAULT_SESSION = awesome

# Configure X
xsetroot -cursor_name left_ptr &
xrdb -merge ~/.Xresources &
#xscreensaver -no-splash &
#feh --bg-center ~/wallpapers/city.jpeg &
clipit &
cairo-compmgr &
#nitrogen --restore &
exec ck-launch-session awesome

case $1 in
    awesome)
        clipit &
        exec launch-session awesome
    ;;
    kde)
        exec launch-session startkde
    ;;
    *)
        clipit &
        exec $DEFAULT_SESSION
    ;;
esac
