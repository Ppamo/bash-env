source "$HOME/.git-prompt.sh"
export LANG="es_ES.UTF-8"
export PATH=$PATH:/usr/bin:$HOME/bin

. $HOME/.docker.start.sh

PROMPT_DIRTRIM=4
export PS1='\[\033[01;32m\]\h\[\033[01;34m\] \w\[\033[31m\]$(__git_ps1 " [%s]") \[\033[01;34m\]\r\n$ \[\033[00m\]'

alias c='cd'
alias l='ls -plh'
alias la='ls -plah'
alias v='vim -p'

alias we='cd /cygdrive/c/Ppamo/code/ms'
alias ge='cd /cygdrive/d/Ppamo/Code/go'
alias mk="$HOME/bin/minikube-windows-amd64.exe"

cd
. $HOME/.tmux-session.sh
