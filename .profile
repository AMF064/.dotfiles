#!/bin/sh

#
#   ~/.profile
#

#Export all variables in this file
set -o allexport

CDPATH=.:$HOME
ENV=$HOME/.kshrc
MANSECT="3:3p:1:1p:n:l:8:0:0p:2:3type:5:4:9:6:7"
TERMINAL="st"
JAVA_HOME="/usr/lib/jvm/java-17-openjdk"
FILEMAN="vifm"
EDITOR="nvim"
BROWSER="qutebrowser"
READER="zathura"
VIEWER="sxiv"
PATH=$PATH:$HOME/.local/bin
PATH="$PATH:/home/amf/.local/bin/"
PATH="$PATH:$JAVA_HOME/bin/"
CLASSPATH="$JAVA_HOME/lib/"
MAILCHECK=0
#MESA_GLSL_VERSION_OVERRIDE=330
#MESA_GL_VERSION_OVERRIDE=3.3

xset q > /dev/null 2>&1 || startx
