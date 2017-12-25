source "$HOME/.git-prompt.sh"
export LANG="es_ES.UTF-8"
export GOPATH=/home/develop/go
export PATH=$PATH:$HOME/bin:$GOPATH/bin

PROMPT_DIRTRIM=4
export PS1='\[\033[01;32m\]\h\[\033[01;34m\] \w\[\033[31m\]$(__git_ps1 " [%s]") \[\033[01;34m\]\r\n$ \[\033[00m\]'
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias c='cd'
alias l='ls -plh'
alias la='ls -plah'
alias v='vim -p'
alias mk='/root/bin/minikube'
alias kube='/root/bin/kubectl'
alias eclipse='/home/pablo/Descargas/Eclipse/eclipse/eclipse'
alias lastP='ps axho etime,pid,cmd | grep -E " [0-9]{2}:[0-9]{2} " --color  | sort | less'

. $HOME/.tmux-session.sh
