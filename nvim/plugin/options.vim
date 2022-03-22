set path+=**
set title
set bg=light
set go=a
set mouse=a
set cursorline
set nohlsearch
set clipboard+=unnamedplus
set noshowmode
set noruler
set laststatus=2
set noshowcmd
set ignorecase
set number relativenumber
set hidden
set noerrorbells
set incsearch
set scrolloff=8
set tabstop=4
set shiftwidth=4
set wrap linebreak
set smartindent
" set autochdir
set diffopt+=vertical

" Set persistent undo
	set undodir=$XDG_CACHE_HOME/nvim/undodir
	set undofile

" Enable autocompletion:
	set wildmode=longest,list,full

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults
	set splitbelow splitright

" Don't show sudo warning
	au BufEnter * set noro

" Spell checking
	set spelllang=en_us,es_es
	set spellfile=$XDG_DATA_HOME/nvim/spell/custom.utf-8.add

" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*
