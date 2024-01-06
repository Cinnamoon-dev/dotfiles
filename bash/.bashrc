parse_git_branch() {
    local branch="$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')"

    if [[ $branch == "" ]]; then
        echo ""
    else
        echo -e "\e[38;5;222m$branch\e[0m "
    fi
}

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;34m\]\w\[\033[00m\] $(parse_git_branch)$ '

alias ls='ls --color=auto --group-directories-first'
alias ll='ls -lh'
alias la='ls -lhA'
