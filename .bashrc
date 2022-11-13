#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias l='ls -lah'
alias suck='rm -f config.h && sudo make clean install'
alias rmcache='cd ~ ; rm -vr .cache; cd -'
alias rmhist='cd ~/.local/share/ ; rm -vr qutebrowser ; cd -'
alias rmtrash='cd ~/.local/share/ ; rm -vr vifm ; cd -'
PS1='┌[\u@\h \W]\n└\$ '
