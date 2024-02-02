#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

ST_PATH="/home/$USER"
if ! [ -z $ST_PATH ]; then  
    cd "$ST_PATH"
fi

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias sd='shutdown now'
alias rt='reboot'
alias cls='clear'
alias lf='lf /run/media/$USER/'

PS1='(¬‿¬)>[$(pwd)]☣  '
