call plug#begin()
" Tools
Plug 'voldikss/vim-floaterm'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'tami5/sql.nvim'

" Markdown
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'iamcco/markdown-preview.vim'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
Plug 'vimwiki/vimwiki'

" Latex
Plug 'lervag/vimtex'

" Notes
Plug 'vhyrro/neorg'
Plug 'vhyrro/neorg-telescope'

" Status line
Plug 'hoob3rt/lualine.nvim'
Plug 'nvim-lua/lsp-status.nvim'

" Move around
Plug 'kyazdani42/nvim-tree.lua'
Plug 'ptzz/lf.vim'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'TimUntersberger/neogit'

"Undo tree
Plug 'mbbill/undotree'

" Dap
Plug 'mfussenegger/nvim-dap'

" Language support
Plug 'neovim/nvim-lspconfig'
Plug 'anott03/nvim-lspinstall'
Plug 'nvim-lua/lsp-status.nvim'
Plug 'glepnir/lspsaga.nvim'
Plug 'psf/black'
Plug 'onsails/lspkind-nvim'

" Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

" Copilot
Plug 'github/copilot.vim'

" Autocomplete
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-copilot'
Plug 'saadparwaiz1/cmp_luasnip'

" tpope
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

" Telescope
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope-dap.nvim'
Plug 'nvim-telescope/telescope-github.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'
Plug 'nvim-telescope/telescope-symbols.nvim'
Plug 'nvim-telescope/telescope-frecency.nvim'

" Colors
Plug 'lilydjwg/colorizer'
Plug 'p00f/nvim-ts-rainbow'
Plug 'tjdevries/colorbuddy.nvim'

call plug#end()
