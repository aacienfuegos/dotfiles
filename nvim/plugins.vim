call plug#begin()
" Markdown
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'iamcco/markdown-preview.vim'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
Plug 'vimwiki/vimwiki'

"Latex
Plug 'lervag/vimtex'

" Colors
Plug 'hoob3rt/lualine.nvim'
Plug 'lilydjwg/colorizer'
Plug 'p00f/nvim-ts-rainbow'
Plug 'airblade/vim-gitgutter'
Plug 'shaunsingh/nord.nvim'

"Nerd Tree
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'

"Lf
Plug 'ptzz/lf.vim'
Plug 'voldikss/vim-floaterm'

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
" Plug 'Shougo/deoplete.nvim'
" Plug 'deoplete-plugins/deoplete-lsp'
Plug 'hrsh7th/nvim-compe'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()
