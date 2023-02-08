#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s autocd         #No need to write cd
shopt -s histappend     #Append history, do not overwrite it


alias ls='ls --color=auto'
alias l='ls -lah'
alias suck='rm -f config.h && sudo make clean install'
alias rmcache='rm -vr ~/.cache'
alias rmhist='rm -vr ~/.local/share/qutebrowser'
alias rmtrash='rm -vr ~/.local/share/vifm'
alias poweroff='sudo poweroff'
alias v='nvim'
PS1='┌[\e[1;32m\u\e[0m@\e[1;36m\h\e[0m \W]\n└\$ '
PS2='> '
