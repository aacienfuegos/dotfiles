" " Tresitter config
lua << EOF
require'nvim-treesitter.configs'.setup {
	highlight = { enable = true },
	incremental_selection = { enable = true },
	indent = {enable = true},
	textobjects = { enable = true }
	}

EOF
