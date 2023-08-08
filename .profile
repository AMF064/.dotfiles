#!/bin/sh

#
#   ~/.profile
#

#Export all variables in this file
set -o allexport

CDPATH=.:$HOME
ENV=$HOME/.kshrc
TERMINAL="st"
JAVA_HOME="/usr/lib/jvm/java-17-openjdk"
FILEMAN="vifm"
EDITOR="/usr/bin/nvim"
BROWSER="qutebrowser"
READER="zathura"
PATH=$PATH:$HOME/.local/bin
PATH="$PATH:/home/amf/.local/bin/"
PATH="$PATH:$JAVA_HOME/bin/"
CLASSPATH="$JAVA_HOME/lib/"
#MESA_GLSL_VERSION_OVERRIDE=330
#MESA_GL_VERSION_OVERRIDE=3.3

startx
