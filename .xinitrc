#!/bin/sh



# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

setxkbmap -layout gb,es -option ctrl:swapcaps,grp:shifts_toggle &

$HOME/.fehbg &
sxhkd &

#Key repeat delay, key repeat rate
xset r rate 300 50
#Bell off
xset b 0


#Variables for setting the statusbar
status() { \
    #Ethernet
    echo "E:" && ip -6 addr show enp0s25 | awk '/inet6/{print $2}' | sed 's/\/.*//g' && echo "|"
    #IP address
    echo "W:" && ip -4 addr show wlp3s0 | awk '/inet/{print $2}' | sed 's/\/.*//g' && echo "|"
    #Volume
    echo "V:" && amixer sget Master | awk '/%/{print $NF $4}' | sed "s/\[//g;s/\]$//g;s/\]/ /g" && echo "|"
    #Battery
    echo "B:" && acpi | sed 's/,//g' | awk '{print $4}' && echo "|"
    #Date
    date +"%d/%m/%y %R"
}


while [ true ]
do
    xsetroot -name "$(status | tr '\n' ' ')"
    sleep 1m
done &
exec dwm
