# aliases.fish

alias l1="ls -h1"

alias tree="tree -C"

alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"

# grep
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"
alias xgrep="xargs grep --color=auto"

alias uniqcount="sort | uniq -c | sort -nr"
alias c="clear"

if type -qf python3
  alias python="python3"
end

if type -qf pip3
  alias pip="pip3"
end

if type -qf pinfo
    alias info='pinfo'
end
