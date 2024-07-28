#
# ~/.kshrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Emacs mode
set -o emacs +o vi
#History expansion
set -o csh-history

alias ls='ls --color=auto'
alias l='ls -lAh'
alias grep='grep --color=auto'
alias suck='rm -f config.h && sudo make clean install'
alias rmcache='rm -vr ~/.cache'
alias rmhist='rm -vr ~/.local/share/qutebrowser/{cmd-history,history*,sessions} ~/.local/share/qutebrowser/webengine/{GPUCache,Platform\ Notifications,Session\ Storage,blob_storage,Visited\ Links,IndexedDB,Local\ Storage,Service\ Worker,databases,Network\ Persistent\ State,QuotaManager,QuotaManager-journal,TransportSecurity,user_prefs.json}'
alias rmcookies='rm -vr ~/.local/share/qutebrowser/cookies ~/.local/share/qutebrowser/webengine/Cookies*'
alias rmtrash='rm -vr ~/.local/share/vifm/Trash/'
alias poweroff='systemctl poweroff'
alias godir='cd $(vifm --choose-dir -)'
alias e='$EDITOR'
alias ee='$EDITOR $(fzf)'
alias r='$READER'
alias v='$VIEWER'
alias java='java -classpath ./../bin/'
alias gdb='gdb -q'

git_ps1 ()
{
    git status > /dev/null 2>&1 && printf " (%b)" $(git branch | awk '/^\*/{print $NF}')
}

export PS1='┌[\u@\h \W]$(git_ps1)\n└£ '
#Syntax for AT&T ksh:
#if [[ "$(uname)" == "OpenBSD" ]] ; then
#    export PS1="┌[\u@\h \W]\n└£ "
#else
#    export PS1='$(print -n "┌[$USER@`hostname` "; [[ "${PWD##*/}" == "$USER" ]] && print -n "~" || print -n "${PWD##*/}" ; print -n "] `[[ -n "$(git branch 2>/dev/null)" ]] && echo \($(git branch | awk \"/\*/{print $NF}\" 2> /dev/null)\)`\n└£ ")'
#fi
