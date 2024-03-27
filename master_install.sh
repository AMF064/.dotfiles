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

VIM_REPO="git@github.com:AMF064/dotvim.git"
NVIM_REPO="git@notabug.org:AMF064/dotnvim.git"
EMACS_REPO="git@notabug.org:AMF064/.emacs.d.git"

VIM_PATH="$HOME/.vim"
NVIM_PATH="$HOME/.config/nvim"
EMACS_PATH="$HOME/.emacs.d"

prompt="Choose an editor:\n1) vim\n2) neovim\n3) emacs\nOther characters will cancel this operation.\nYour choice (default = 1): ";

printf "$prompt"
read editor
    case $editor in
        1|"")
            $INSTALL vim
            git clone $VIM_REPO $VIM_PATH
            ;;
        2)
            $INSTALL neovim
            git clone $NVIM_REPO $NVIM_PATH
            ;;
        3)
            $INSTALL emacs
            git clone $EMACS_REPO $EMACS_PATH
            ;;
