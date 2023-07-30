#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export BROWSER="firefox-developer-edition"

alias ls='ls --color=auto'
alias sudo='doas'
alias sudoedit='doas rnano'
alias catimg='img2sixel'
alias trash='gio trash'

alias nofetch='echo'
alias пару='paru'
alias doyouknowyork='echo "York is a cathedral city and unitary authority, at the confluence of the rivers Ouse and Foss in North Yorkshire, England."'
alias geography='echo 💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀'

fortune

PS1='[\u@\h \W]\$ '
