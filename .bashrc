#
# ~/.bashrc
#

PATH=$PATH:/home/sketchy/.local/bin

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Source blesh in interactive shells
[[ $- == *i* ]] && source /usr/share/blesh/ble.sh --noattach

lfcd () {
    # `command` is needed in case `lfcd` is aliased to `lf`
    cd "$(command lf -print-last-dir "$@")"
}

alias lf='lfcd'
alias lfsudo='doas lf -config /home/sketchy/.config/lf/lfrc'
alias ls='ls --color=auto'
alias sudo='doas'
alias sudoedit='doas rnano'
alias trash='gio trash'
alias prime-run='DRI_PRIME=pci-0000_01_00_0 __VK_LAYER_NV_optimus=NVIDIA_only __GLX_VENDOR_LIBRARY_NAME=nvidia'

alias nofetch='echo'
alias doyouknowyork='echo "York is a cathedral city and unitary authority, at the confluence of the rivers Ouse and Foss in North Yorkshire, England."'
alias geography='echo 💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀'

fortune

# Change window title to currently running process
trap 'echo -ne "\033]2;$(history 1 | sed "s/^[ ]*[0-9]*[ ]*//g")\007"' DEBUG

PS1='[\u@\[\e[3m\]\h\[\e[0m\]] \[\e[1m\]\w \$ \[\e[0m\]'
[[ ${BLE_VERSION-} ]] && ble-attach
