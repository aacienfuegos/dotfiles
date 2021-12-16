return require("packer").startup(function(use)
	-- Tools
	use "voldikss/vim-floaterm"
	use "nvim-lua/popup.nvim"
	use "nvim-lua/plenary.nvim"
	use "kyazdani42/nvim-web-devicons"
	use "tami5/sql.nvim"

	-- Markdown
	use "JamshedVesuna/vim-markdown-preview"
	use "iamcco/markdown-preview.vim"
	use "iamcco/mathjax-support-for-mkdp"
	use "vimwiki/vimwiki"

	-- Latex
	use "lervag/vimtex"

	-- Notes
	use "vhyrro/neorg"
	use "vhyrro/neorg-telescope"

	-- Status line
	use "hoob3rt/lualine.nvim"

	-- Move around
	use "kyazdani42/nvim-tree.lua"
	use "ptzz/lf.vim"

	-- Git
	use "lewis6991/gitsigns.nvim"
	use "TimUntersberger/neogit"

	--Undo tree
	use "mbbill/undotree"

	-- Dap
	use "mfussenegger/nvim-dap"

	-- Language support
	use "neovim/nvim-lspconfig"
	use "anott03/nvim-lspinstall"
	use "nvim-lua/lsp-status.nvim"
	use "glepnir/lspsaga.nvim"
	use "psf/black"
	use "onsails/lspkind-nvim"

	-- Syntax highlighting
	use {"folke/trouble.nvim"}

	-- Snippets
	use "L3MON4D3/LuaSnip"
	use "rafamadriz/friendly-snippets"

	-- Copilot
	use "github/copilot.vim"

	-- Autocomplete
	use "hrsh7th/nvim-cmp"
	use "hrsh7th/cmp-nvim-lsp"
	use "hrsh7th/cmp-buffer"
	use "hrsh7th/cmp-path"
	use "hrsh7th/cmp-copilot"
	use "saadparwaiz1/cmp_luasnip"

	-- Comments
	use "numToStr/Comment.nvim"
	use 'JoosepAlviste/nvim-ts-context-commentstring'

	-- tpope
	use "tpope/vim-surround"

	-- Telescope
	use "nvim-telescope/telescope.nvim"
	use {"nvim-treesitter/nvim-treesitter", run = "TSUpdate"}
	use {"nvim-telescope/telescope-fzf-native.nvim", run = "make" }
	use "nvim-telescope/telescope-dap.nvim"
	use "nvim-telescope/telescope-github.nvim"
	use "nvim-telescope/telescope-media-files.nvim"
	use "nvim-telescope/telescope-symbols.nvim"
	use "nvim-telescope/telescope-frecency.nvim"

	-- Colors
	use "lilydjwg/colorizer"
	use "p00f/nvim-ts-rainbow"
	use "tjdevries/colorbuddy.nvim"

end)
