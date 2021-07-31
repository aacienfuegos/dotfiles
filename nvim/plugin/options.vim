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
set smartindent
set autochdir

" Set persistent undo
	set undodir=$XDG_CACHE_HOME/nvim/undodir
	set undofile

" Enable autocompletion:
	set wildmode=longest,list,full

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults
	set splitbelow splitright

" Don't show sudo warning
	au BufEnter * set noro

colorscheme nord
