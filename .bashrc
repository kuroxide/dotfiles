#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias lfsudo='sudo lf -config /home/kuroxide/.config/lf/lfsudorc'

alias lsd='ls -d'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias mkdir='mkdir -pv'
alias cp='cp -i'
alias mv='mv -i'
alias rm='timeout 3 rm -Iv --one-file-system'
alias df='df -ha --total'
alias du='du -c -h | sort -h'
alias cl='clear'
alias mimetype='file -Lb --mime-type'

alias nofetch='echo'
alias doyouknowyork='echo "York is a cathedral city and unitary authority, at the confluence of the rivers Ouse and Foss in North Yorkshire, England."'
alias geography='echo 💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀'

set -C
fortune

# Change window title to currently running process
trap 'echo -ne "\033]2;$(history 1 | sed "s/^[ ]*[0-9]*[ ]*//g")\007"' DEBUG

PS1='[\[\e[1m\]\u\[\e[0m\]@\h \[\e[1m\]\w\[\e[0m\]]\\$ '
