parse_git_branch() {
    local branch="$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')"
    local changes=""

    if [[ -z "$(git ls-files --others --exclude-standard --directory --no-empty-directory --error-unmatch -- ':/*' >/dev/null 2>/dev/null)" ]]; then
        changes="*"
    fi

    if [[ -z $branch ]]; then
        echo ""
    else
        echo -e "\e[38;5;222m$branch$changes\e[0m "
    fi
}

right_arrow=$(echo -e "\uf054")

PS1=' \u \[\033[01;34m\]\w\[\033[00m\] $(parse_git_branch)${right_arrow} '

alias ls='ls --color=auto --group-directories-first'
alias l='ls -lh'
alias lx='ls -lhX'
alias la='ls -lhA'
alias lax='ls -lhAX'
