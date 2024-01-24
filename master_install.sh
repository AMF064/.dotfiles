#!/bin/sh

PROGRAM_LIST=$(cat PROGRAMS)

INSTALL=""
case "$(uname)" in
    OpenBSD)
        INSTALL="pkg_add"
        ;;
    Linux)
        DISTRO_NAME="$(awk -F'=' '/^ID/{print $NF}' /etc/*-release)"
        case "$DISTRO_NAME" in
            arch)
                INSTALL="pacman -S"
                ;;
            parabola)
                INSTALL="pacman -S"
                ;;
            alpine)
                INSTALL="apk add"
                ;;
            void)
                INSTALL="xbps-install"
                ;;
            gentoo)
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
