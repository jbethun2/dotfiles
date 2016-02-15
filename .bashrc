# jbethune - .bashrc 
# modified 02/14/2016

#####
#
# Source global definitions
#
#####
if [ -f /etc/bashrc ]; then
	source /etc/bashrc
fi

#####
#
# Set up input
#
#####
set -o vi

#####
#
# Variables to build prompt, prompt itself
#
#####
nl='
'
esc=`perl -e 'print "\x1b"'`
black="${esc}[30m"
red="${esc}[31m"
green="${esc}[32m"
yellow="${esc}[33m"
blue="${esc}[34m"
magenta="${esc}[35m"
cyan="${esc}[36m"
white="${esc}[37m"

# one prompt to rule them all
PS1=${green}${USER}${white}'@'${yellow}`hostname -s`${white}' $PWD > ${nl}$ '

#####
#
# Aliases
#
#####
# General application aliases
alias view="vim -R "
os_string=$(uname)
if [[ $os_string == 'Darwin' ]]; then
    alias ls='ls -FG'
elif [[ $os_string == 'Linux' ]]; then
    alias ls='ls -F --color=auto'
fi

#####
#
# Golang
#
#####
export GOPATH=$HOME/golang

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
