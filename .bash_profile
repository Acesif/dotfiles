#
# ~/.bash_profile
#

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  exec startx
fi 

[[ -f ~/.bashrc ]] && . ~/.bashrc
export FLYCTL_INSTALL="/home/acesif/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

export PATH=$PATH:/home/acesif/.spicetify
