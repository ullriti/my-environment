# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
if [[ $(whoami) == "root" ]]; then
    export PS1="\[\033[31;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\h:\[$(tput sgr0)\]\[\033[38;5;6m\][\w]:\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
else
    export PS1="\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\h:\[$(tput sgr0)\]\[\033[38;5;6m\][\w]:\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
fi

# enable vi mode
set -o vi

PAGER='less'
EDITOR='vim'

export TERM="xterm-256color"
export HISTCONTROL=ignoreboth
LS_COLORS='fi=93:di=32:ln=36:so=33:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=32;40'
export LS_COLORS

# You may uncomment the following lines if you want `ls' to be colorized:

export LS_OPTIONS='--color=auto'
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias la='ls $LS_OPTIONS -la'

# Some more alias to avoid making mistakes:
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias gac='git add -A && git commit -m $1'
alias upgrade='sudo apt update && sudo apt upgrade'

alias dodo='docker-compose down'
alias dcup='docker-compose up -d'
alias dcpull='docker-compose pull'
