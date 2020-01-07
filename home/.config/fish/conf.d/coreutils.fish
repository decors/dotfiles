# coreutils.fish - for macOS homebrew coreutils

# GNU ls
function gls --description "List contents of directory"
    set -l param --color=auto
    if isatty 1
        set -a param --indicator-style=classify
    end
    command gls $param $argv
end

alias gll="gls -lh"
alias gla="gls -lah"
alias gl1="gls -h1"
