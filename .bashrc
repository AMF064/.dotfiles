#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias l='ls -lah'
alias suck='rm -f config.h && sudo make clean install'
alias rmcache='rm -vr ~/.cache'
alias rmhist='rm -vr ~/.local/share/qutebrowser'
alias rmtrash='rm -vr ~/.local/share/vifm'
alias poweroff='sudo poweroff'
PS1='┌[\u@\h \W]\n└\$ '
