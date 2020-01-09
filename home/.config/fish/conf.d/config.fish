# config.fish

set fish_greeting

set -x SHELL (which fish)

# themes
#set fish_color_normal normal
#set fish_color_command 005fd7
#set fish_color_param 00afff
#set fish_color_redirection 00afff
set fish_color_comment brblack
#set fish_color_error ff0000
#set fish_color_escape 00a6b2
#set fish_color_operator 00a6b2
#set fish_color_end 009900
#set fish_color_quote 999900
#set fish_color_autosuggestion 555 brblack
#set fish_color_valid_path --underline
#set fish_color_cwd green
#set fish_color_cwd_root red
#set fish_color_match --background=brblue
set fish_color_search_match yellow --background=brblack
#set fish_color_selection white --bold --background=brblack
#set fish_pager_color_prefix white --bold --underline
#set fish_pager_color_completion
#set fish_pager_color_description B3A06D yellow
#set fish_pager_color_progress brwhite --background=cyan
#set fish_pager_color_secondary
#set fish_color_history_current --bold
#set fish_color_user brgreen
#set fish_color_host normal
#set fish_color_cancel -r

# editor
set -x EDITOR vim
set -x VISUAL vim

# less
set -x PAGER less
set -x LESS '-R'
set -x MORE '-R'
set -x MANPAGER 'less -R'

# ls
set -x CLICOLOR 1
set -x LSCOLORS fxgxcxdxbxxbeaabagacad
if [ -f ~/.dircolors ]
    if type -fq dircolors
        eval (dircolors -c ~/.dircolors)
    else if type -fq gdircolors
        eval (gdircolors -c ~/.dircolors)
    end
end

# fzf
set -x FZF_DEFAULT_OPTS '--bind ctrl-f:page-down,ctrl-b:page-up --ansi --no-sort --reverse --color bg+:13,hl:3,pointer:7'

# ghq
set -g GHQ_SELECTOR fzf
set -g GHQ_SELECTOR_OPTS '--prompt="ghq> "'

# Homebrew
#if type -fq mate
#    set -x HOMEBREW_EDITOR (which mate)
#end
set -x HOMEBREW_CASK_OPTS "--appdir=/Applications"
if [ -d /usr/local/sbin ]
    set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
end
#if [ -f ~/.brew_api_token ]
#    set -x HOMEBREW_GITHUB_API_TOKEN (cat ~/.brew_api_token)
#end

# Linuxbrew
if [ -x /home/linuxbrew/.linuxbrew/bin/brew ]
  eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
end

# Direnv
if type -fq direnv
    eval (direnv hook fish)
end

# rbenv
if [ -d $HOME/.rbenv/bin ]
  set PATH $PATH $HOME/.rbenv/bin
end

if type -fq rbenv
    rbenv init - | source
end

# venv
set -g VIRTUAL_ENV_DISABLE_PROMPT 1

# fish plugins
set -g man_blink -o red
set -g man_bold -o green
set -g man_standout -b black 93a1a1
set -g man_underline -u 93a1a1

set -g lv_standout --background=black 93a1a1
set -g lv_reverse --background=black 93a1a1
set -g lv_blink --bold red
set -g lv_underline --underline 93a1a1
set -g lv_hilight cyan --bold

set -g source_highlight_style_file $HOME/.source-highlight/my.style

set -g FZF_LEGACY_KEYBINDINGS 0
