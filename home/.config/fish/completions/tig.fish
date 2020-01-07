function __fish_tig_needs_command
    set cmd (commandline -opc)
    if [ (count $cmd) -eq 1 -a $cmd[1] = "tig" ]
        return 0
    end
    return 1
end

complete -f -c tig -l help    -s h -d "Show help message and exit"
complete -f -c tig -l version -s v -d "Show version and exit"

complete -f -c tig -n "__fish_tig_needs_command" -a log
complete -f -c tig -n "__fish_tig_needs_command" -a show
complete -f -c tig -n "__fish_tig_needs_command" -a blame
complete -f -c tig -n "__fish_tig_needs_command" -a grep
complete -f -c tig -n "__fish_tig_needs_command" -a refs
complete -f -c tig -n "__fish_tig_needs_command" -a stash
complete -f -c tig -n "__fish_tig_needs_command" -a status
