#
# ~/.bash_profile
#
export TERMINAL="st"
export JAVA_HOME="/usr/lib/jvm/java-17-openjdk"
export FILEMAN="vifm"
export EDITOR="nvim"
export BROWSER="qutebrowser"
export READER="zathura"
export VIEWER="sxiv"
export SCREENSHOT_DIR="$HOME/Pictures/screenshots"
export PATH="$PATH:/home/amf/.local/bin/"
export PATH="$PATH:$JAVA_HOME/bin/"
export MANSECT=2:3:3p:1:1p:n:l:8:0:0p:3type:5:4:9:6:7
export CLASSPATH="$JAVA_HOME/lib/"

[[ -f ~/.bashrc ]] && . ~/.bashrc
xset q > /dev/null 2>&1 || exec startx
