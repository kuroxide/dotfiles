#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTCONTROL=ignoredups

alias ..='cd ..'
alias ...='cd ../..'
alias back='cd $OLDPWD'

alias lfsudo='sudo lf -config $HOME/.config/lf/lfsudorc'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias mkdir='mkdir -pv'
alias cp='cp -i'
alias mv='mv -i'
alias rm='timeout 3 rm -Iv --one-file-system'
alias df='df -ha --total'
alias diskusage='du -hS | sort -h -r | less'
alias clr='clear'
alias mimetype='file -Lb --mime-type'
alias nvrun='DRI_PRIME=pci-0000_01_00_0 __VK_LAYER_NV_optimus=NVIDIA_only __GLX_VENDOR_LIBRARY_NAME=nvidia'

alias nofetch='echo'
alias doyouknowyork='echo "York is a cathedral city and unitary authority, at the confluence of the rivers Ouse and Foss in North Yorkshire, England."'
alias geography='echo 💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀'

set -o noclobber
fortune

# Change window title to currently running process
trap 'echo -ne "\033]2;$(history 1 | sed "s/^[ ]*[0-9]*[ ]*//g")\007"' DEBUG

PS1='[\[\e[1m\]\u\[\e[0m\]@\h \[\e[1m\]\w\[\e[0m\]]\\$ '
