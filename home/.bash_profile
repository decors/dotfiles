# .bash_profile

export PATH="$PATH:/opt/homebrew/bin"

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# Prompt
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

export EDITOR="vim"
export PAGER="less"
export LESS="-R"
export MORE="-R"

export CLICOLOR=1
export LSCOLORS=fxgxcxdxbxxbeaabagacad

export HOMEBREW_CASK_OPTS="--appdir=/Applications"
