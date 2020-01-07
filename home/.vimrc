set nocompatible

set ffs=unix,dos,mac
set encoding=utf-8
set enc=utf-8
set fenc=utf-8
"set fencs=iso-2022-jp,sjis,euc-jp,utf-8

colorscheme desert

"lang en_US

syntax on

set laststatus=2
set statusline=%f\ %{'['.(&fenc!=''?&fenc:'?').'-'.&ff.']'}

set number
set nowrap
set nobackup
set autoread
set noswapfile
set textwidth=0
set showmatch
set showcmd
set backspace=indent,eol,start
set autoindent
set smartindent
set cindent
set tabstop=2 shiftwidth=2 softtabstop=0
set expandtab

set wrapscan
set incsearch

set cursorline
augroup cch
    autocmd! cch
    autocmd WinLeave * set nocursorline
    autocmd WinEnter,BufRead * set cursorline
augroup END
