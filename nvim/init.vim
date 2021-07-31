" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" Load list of plugins
source $XDG_CONFIG_HOME/nvim/plugins.vim


let mapleader=" "

" Turns off highlighting on the bits of code that are changed, so the line that is changed is highlighted but the actual text that has changed stands out on the line and is readable.
if &diff
    highlight! link DiffText MatchParen
endif

filetype plugin on
syntax on
