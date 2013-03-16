#!/bin/bash
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
PATH=/usr/local/bin:$PATH
PATH=$PATH:$HOME/bin
export PATH

PS1="[\u@\h:\w]\$ "
export PS1

alias ls='ls -G'
alias la='ls -aG'
alias ll='ls -alG'
alias mkdir='mkdir -p'
alias rf='rm -rf'
alias rm='rm -ri'
alias rmdir='rm -rf'
alias screenls='screen -ls'
alias screen='screen -UxR'
alias rmsvn='rm -rf `find . -type d -name .svn`'
alias cp='cp -aR'
alias diff='diff -ub'
alias r='rails'
alias e='emacsclient'
alias em='emacsclient -nw'
alias en='emacsclient -n'
alias ekill="emacsclient -e '(kill-emacs)'"

export SCREENDIR=$HOME/.screen

#settings for mac
if [ -e /usr/bin/open ]; then
	alias eclipse='open -a eclipse'
	alias chrome='open -a Google\ Chrome'

	alias umount='sudo diskutil umount'

	#alias mysql.server='sudo /opt/local/share/mysql5/mysql/mysql.server'
fi

#other settings
if [ -e /usr/local/bin/rbenv ]; then
	eval "$(rbenv init -)"
fi

# 起動してないときだけemacs
if  [ `ps -ax | grep emacs | wc -l` = 1 ];then
	emacs
fi

alias emacs='emacsclient -nw'
export EDITOR='emacsclient -nw'
export VISUAL='emacsclient -nw'
