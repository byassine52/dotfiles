export TMUX_SERVER_COLOR=green
export EDITOR=vi
export PATH=$HOME/bin/:$HOME/:$PATH
export PATH=$HOME/local/bin:$PATH

export HISTCONTROL=ignoreboth
export HISTSIZE=10000
shopt -s histappend
shopt -s cmdhist

h() {
	if [ -z "$*" ]; then
		history
	else
		history | grep "$*"
	fi
}

[[ -f ~/.autojump/etc/profile.d/autojump.bash ]] && source ~/.autojump/etc/profile.d/autojump.bash

alias svnupdry='svn merge --dry-run -r BASE:HEAD .' 
alias dw="svn diff -x -w"
alias pack='ack --pager="less -R"'
alias svimdiff='svn diff --diff-cmd svn-vimdiff'

source ~/.git-completion.bash

. ~/.bash_prompt

pfunc() { local regex=$1 ; shift ; ack --nogroup "function\s+&?$regex" "$@" ; }

umask 002
