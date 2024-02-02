#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias sd='shutdown now'
alias rt='reboot'
alias nv='cd /run/media/acesif/Three/Code;nvim'
alias 1='cd /run/media/acesif/One/'
alias 2='cd /run/media/acesif/Two/'
alias 3='cd /run/media/acesif/Three/'
alias yin='yay -Sy $1 --noconfirm'
alias yir='yay -R $1 --noconfirm'
alias cls='clear'
alias hd='foxitreader /home/acesif/Downloads/Handson\ ML.pdf'
alias cmp='foxitreader /home/acesif/Downloads/cp.pdf'
alias in='foxitreader /home/acesif/Downloads/interview.pdf'
alias nnfs='foxitreader /home/acesif/Downloads/nnfs.pdf'
alias dsa='nemo /run/media/acesif/Three/mitocw\ -\ MIT\ 6\ 006\ Introduction\ to\ Algorithms\,\ Spring\ 2020/'
alias sta='foxitreader /home/acesif/Downloads/stat.pdf'
alias book='cat /home/acesif/book'
alias andr='aft-mtp-mount ~/andr'
alias youtube-dl='/usr/bin/youtube-dl/bin/youtube-dl'
alias lf='lf /run/media/acesif/'
#PS1='[\u@\h \W]\$ '
PS1='(¬‿¬)>[$(pwd)]☣  '
export PATH=$PATH:/home/acesif/.spicetify
export PATH=$PATH:/run/media/acesif/Three/Code/intellij/idea-IU-233.13135.103/bin
