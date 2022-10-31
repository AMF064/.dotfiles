#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

setxkbmap gb &
$HOME/.fehbg &

#Key repeat delay, key repeat rate
xset r rate 300 50

#Variables for setting the statusbar
status() { \
    #Battery
    echo "B:" && acpi | sed 's/,//g' | awk '{print $4}' && echo "|"
    #Date
    date +"%D %R"
}


while [ true ]
do
    xsetroot -name "$(status | tr '\n' ' ')"
	sleep 1m
done &
exec dwm
