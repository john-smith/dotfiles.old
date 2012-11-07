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

#alias list='ls -1G'
#alias lista='ls -1Ga'

export SCREENDIR=$HOME/.screen
export EDITOR=emacs

#settings for mac
alias eclipse='open -a eclipse'
alias chrome='open -a Google\ Chrome'

alias umount='sudo diskutil umount'

alias mysql.server='sudo /opt/local/share/mysql5/mysql/mysql.server'
