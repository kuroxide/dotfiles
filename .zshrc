HISTFILE=~/.zsh_history
HISTSIZE=200
SAVEHIST=200
bindkey -e
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char
zstyle :compinstall filename '/home/sketchy/.zshrc'

autoload -Uz compinit
compinit

export PATH=$PATH:/home/sketchy/.local/bin
PROMPT="[%n@%B%M%b] %B%~%b %# "

# Window title
preexec () { print -Pn "\e]2;$1\a" }
chpwd () { print -Pn "\e]2;%~\a" }

lfcd () { cd "$(command lf -print-last-dir "$@")" }
lfsudo () { doas lf -config /home/sketchy/.config/lf/lfsudorc }

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

alias lf='lfcd'
alias sudo='doas'
alias sudoedit='doas rnano'

alias nofetch='echo'
alias doyouknowyork='echo "York is a cathedral city and unitary authority, at the confluence of the rivers Ouse and Foss in North Yorkshire, England."'
alias geography='echo 💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀'

print -Pn "\e]2;%~\a"
fortune

# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/sketchy/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

