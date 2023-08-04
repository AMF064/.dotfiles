#
# ~/.kshrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Emacs mode
set -o emacs +o vi
#History expansion
set -o histexpand

alias ls='ls --color=auto'
alias l='ls -lah'
alias es='setxkbmap es && xmodmap .Xmodmap'
alias gb='setxkbmap gb && xmodmap .Xmodmap'
alias grep='grep --color=auto'
alias suck='rm -f config.h && sudo make clean install'
alias rmcache='rm -vr ~/.cache'
alias rmhist='rm -vr ~/.local/share/qutebrowser/{cmd-history,history*,sessions} ~/.local/share/qutebrowser/webengine/{GPUCache,Platform\ Notifications,Session\ Storage,blob_storage,Visited\ Links,IndexedDB,Local\ Storage,Service\ Worker,databases,Network\ Persistent\ State,QuotaManager,QuotaManager-journal,TransportSecurity,user_prefs.json}'
alias rmtrash='rm -vr ~/.local/share/vifm/Trash/'
alias poweroff='systemctl poweroff'
alias e='$EDITOR'
alias java='java -classpath ./../bin/'

#Syntax for AT&T ksh:
export PS1='$(print -n "┌[$USER@`hostname` "; [[ "${PWD##*/}" == "$USER" ]] && print -n "~" || print -n "${PWD##*/}" ; print -n "]\n└£ ")'
#Valid syntax for oksh:
#export PS1='┌[\u@\h \W]\n└£ '