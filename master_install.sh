#!/bin/sh

PROGRAM_LIST=$(cat PROGRAMS)

INSTALL=""
case "$(uname)" in
    OpenBSD)
        INSTALL="pkg_add"
        ;;
    Linux)
        case "$(hostnamectl | awk '/Operating System/{print $3}')" in
            Arch)
                INSTALL="pacman -S"
                ;;
            Parabola)
                INSTALL="pacman -S"
                ;;
            Alpine)
                INSTALL="apk add"
                ;;
            Void)
                INSTALL="xbps-install"
                ;;
            Gentoo)
                INSTALL="emerge -atv"
                ;;
            *)
                INSTALL="apt-get install"
                ;;
        esac
        ;;
esac

#Install packages in PROGRAMS
$INSTALL $PROGRAM_LIST
