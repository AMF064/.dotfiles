#!/bin/sh

PROGRAM_LIST=$(cat PROGRAMS)

INSTALL=""
case "$(hostnamectl | awk '/Operating System/{print $3}')" in
    Arch)
        INSTALL="pacman -S"
        ;;
    Debian)
        INSTALL="apt-get install"
        ;;

    esac

#Install packages in MANIFEST
$INSTALL $PROGRAM_LIST
