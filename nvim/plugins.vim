call plug#begin()
" Tools
Plug 'voldikss/vim-floaterm'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'kyazdani42/nvim-web-devicons'

" Markdown
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'iamcco/markdown-preview.vim'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
Plug 'vimwiki/vimwiki'

"Latex
Plug 'lervag/vimtex'

" Status line
Plug 'hoob3rt/lualine.nvim'

" Move around
Plug 'kyazdani42/nvim-tree.lua'
Plug 'ptzz/lf.vim'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

"Undo tree
Plug 'mbbill/undotree'

" Language support
Plug 'neovim/nvim-lspconfig'
Plug 'anott03/nvim-lspinstall'
Plug 'nvim-lua/lsp-status.nvim'
Plug 'nvim-lua/completion-nvim'
Plug 'norcalli/snippets.nvim'
Plug 'glepnir/lspsaga.nvim'

" Autocomplete
Plug 'hrsh7th/nvim-compe'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

" Telescope
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

" Colors
Plug 'lilydjwg/colorizer'
Plug 'p00f/nvim-ts-rainbow'
Plug 'shaunsingh/nord.nvim'

call plug#end()
