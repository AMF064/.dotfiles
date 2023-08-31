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
export PATH="$PATH:/home/amf/.local/bin/"
export PATH="$PATH:$JAVA_HOME/bin/"
export CLASSPATH="$JAVA_HOME/lib/"

[[ -f ~/.bashrc ]] && . ~/.bashrc
xset q > /dev/null 2>&1 || startx
