let mapleader=" "

lua require("aacienfuegos")

" Turns off highlighting on the bits of code that are changed, so the line that is changed is highlighted but the actual text that has changed stands out on the line and is readable.
if &diff
    highlight! link DiffText MatchParen
endif

filetype plugin on
syntax on
