" " Tresitter config
lua << EOF
require'nvim-treesitter.configs'.setup {
	highlight = { enable = true },
	incremental_selection = { enable = true },
	indent = {enable = true},
	rainbow = { enable = true, extended_mode = true },
	}

EOF
