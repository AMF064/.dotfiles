#!/bin/sh

#
#   ~/.profile
#

#Export all variables in this file
set -o allexport

CDPATH=.:$HOME
ENV=$HOME/.kshrc
HISTFILE=$HOME/.sh_history
MANSECT=2:3:3p:1:1p:n:l:8:0:0p:3type:5:4:9:6:7
TERMINAL="st"
JAVA_HOME="/usr/lib/jvm/java-17-openjdk"
FILEMAN="vifm"
FILEMAN_TERMINAL_OPEN="$TERMINAL -e $FILEMAN"
EDITOR="vim"
EDITOR_TERMINAL_OPEN="$TERMINAL -e $EDITOR"
BROWSER="tabbed -c surf -e"
READER="zathura"
VIEWER="sxiv"
SCREENSHOT_DIR="$HOME/Pictures/screenshots"
PATH=$PATH:$HOME/.local/bin
PATH="$PATH:/home/amf/.local/bin/"
PATH="$PATH:$JAVA_HOME/bin/"
CLASSPATH="$JAVA_HOME/lib/"
MAILCHECK=0
#MESA_GLSL_VERSION_OVERRIDE=330
#MESA_GL_VERSION_OVERRIDE=3.3

[[ -z $DISPLAY && "$(tty)" == "/dev/tty1" ]] && startx
#xset q > /dev/null 2>&1 || exec startx
