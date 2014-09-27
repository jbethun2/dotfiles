# jbethune - .bashrc 
# modified 01/04/2013

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

# SSH aliases
alias eggateway="ssh eggw01p.prod.orbitz.net"
alias wmgateway="ssh wmgw01p.prod.orbitz.net"
alias egpromo="ssh egpromo01p.prod.orbitz.net"
alias wmpromo="ssh wmpromo01p"
alias socdev="ssh soc01p"
alias workstation="ssh 10.222.140.68"
