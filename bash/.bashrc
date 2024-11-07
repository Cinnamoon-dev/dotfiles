right_arrow=$(echo -e "\uf054")

PS1=' \u \[\033[01;34m\]\w\[\033[00m\]\e[38;5;222m$(__git_ps1)\e[0m ${right_arrow} '

alias ls='ls --color=always --group-directories-first --time-style=iso'
alias l='ls -lh'
alias lx='ls -lhX'
alias la='ls -lhA'
alias lax='ls -lhAX'

alias d="docker"
alias dc="docker compose"

HISTTIMEFORMAT="%d/%m/%y  %T "

eval "$(fzf --bash)"
