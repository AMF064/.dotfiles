#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s autocd         #No need to write cd
shopt -s histappend     #Append history, do not overwrite it

alias ls='ls --color=auto'
alias l='ls -lah'
alias es='setxkbmap es && xmodmap .Xmodmap'
alias gb='setxkbmap gb && xmodmap .Xmodmap'
alias grep='grep --color=auto'
alias suck='rm -f config.h && sudo make clean install'
alias rmcache='rm -vr ~/.cache'
alias rmhist='rm -vr ~/.local/share/qutebrowser'
alias rmtrash='rm -vr ~/.config/vifm/Trash/'
alias poweroff='systemctl poweroff'
alias v='nvim'
alias java='java -classpath ./../bin/'
PS1='┌[\e[1;32m\u\e[0m\e[1;31m̛̛@\e[0m\e[1;36m\h\e[0m \W]\n└\$ '
PS2='> '
