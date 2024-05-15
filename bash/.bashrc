right_arrow=$(echo -e "\uf054")

PS1=' \u \[\033[01;34m\]\w\[\033[00m\]$(__git_ps1) ${right_arrow} '

alias ls='ls --color=auto --group-directories-first --time-style=iso'
alias l='ls -lh'
alias lx='ls -lhX'
alias la='ls -lhA'
alias lax='ls -lhAX'

HISTTIMEFORMAT="%d/%m/%y  %T "
