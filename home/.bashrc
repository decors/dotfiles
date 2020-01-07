# .bashrc

# dircolors

if [ -r ~/.dircolors ]; then
    if [ -x dircolors ]; then
        eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    fi

    # macOS homebrew coreutils
    if [ -x gdircolors ]; then
        eval "$(gdircolors -b ~/.dircolors)" || eval "$(gdircolors -b)"
    fi
fi

# aliases

if ! ls --version >/dev/null 2>&1; then
    lscoloroption="-G"
else
    lscoloroption="--color"
fi
alias ls="ls -h $lscoloroption"
alias l1="ls -h1 $lscoloroption"
alias ll="ls -hl $lscoloroption"
alias la="ls -hal $lscoloroption"

alias tree="tree -C"

alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"

alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"
alias xgrep="xargs grep --color=auto"

alias uniqcount="sort | uniq -c | sort -nr"
alias c="clear"

# lesspipe

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# homebrew

if type "brew" > /dev/null 2>&1; then
    if [ -f `brew --prefix`/etc/grc.bashrc ]; then
        . "`brew --prefix`/etc/grc.bashrc"
    fi
    if [ -f `brew --prefix`/etc/bash_completion ]; then
        . "`brew --prefix`/etc/bash_completion"
    fi
fi
