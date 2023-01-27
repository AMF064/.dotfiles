#!/bin/sh



# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

setxkbmap gb &

#Keymaps
#string=$(xmodmap -pk | grep -E "^\s*(66|37)" | awk '{print $3}' | tr '\n' ' ')
#[[ $string == "(Caps_Lock) (Control_L) " ]] && xmodmap $HOME/.Xmodmap &
xmodmap $HOME/.Xmodmap &

$HOME/.fehbg &
sxhkd &

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
