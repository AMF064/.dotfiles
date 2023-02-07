#
# ~/.bash_profile
#
export TERMINAL="st"
export JAVA_HOME="/usr/lib/jvm/java-17-openjdk"
export FILEMAN="vifm"
export EDITOR="nvim"
export BROWSER="qutebrowser"
export READER="zathura"
export PATH="$PATH:$JAVA_HOME/bin/"
export CLASSPATH="$JAVA_HOME/lib/"

[[ -f ~/.bashrc ]] && . ~/.bashrc
startx
