# functions.fish

# MacVim
if [ -d /Applications/MacVim.app ]
    function vi --description 'MacVim'
        command env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim $argv
    end
    functions -q vim; or functions -c vi vim
    function gvim --description 'MacVim'
        command env LANG=ja_JP.UTF-8 open -a /Applications/MacVim.app $argv
    end
end

# Visual Studio Code
if not type -fq code
    and [ -d /Applications/Visual\ Studio\ Code.app ]
    function code --description 'Visual Studio Code'
        command env VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $argv
    end
end

# TextMate
if not type -fq mate
    and [ -d /Applications/TextMate.app ]
    function mate --description 'TextMate'
        command /Applications/TextMate.app/Contents/Resources/mate $argv
    end
end
