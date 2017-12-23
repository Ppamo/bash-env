source "$HOME/.git-prompt.sh"
export LANG="es_ES.UTF-8"
export PATH=$PATH:/usr/bin:$HOME/bin

PROMPT_DIRTRIM=4
export PS1='\[\033[01;32m\]\h\[\033[01;34m\] \w\[\033[31m\]$(__git_ps1 " [%s]") \[\033[01;34m\]\r\n$ \[\033[00m\]'

alias c='cd'
alias l='ls -plh'
alias la='ls -plah'
alias v='vim -p'

alias we='cd $HOME/ibm/ms'
alias ge='cd $HOME/code/go'

cd
. $HOME/.tmux-session.sh
