#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


alias ls='ls --color=auto'
alias l='ls -lah'
alias suck='rm -f config.h && sudo make clean install'
alias removehist='cd ~/.config/vimb/ ; rm -v closed command cookies.db history ; cd'
PS1='┌[\u@\h \W]\n└\$ '
