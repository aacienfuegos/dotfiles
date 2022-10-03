require 'nvim-treesitter.configs'.setup {
	highlight = { enable = true },
	incremental_selection = { enable = true },
	indent = {
		enable = true,
	},
	textobjects = {
		select = {
			enable = true,
			-- Automatically jump forward to textobj, similar to targets.vim
			lookahead = true,
			keymaps = {
				-- You can use the capture groups defined in textobjects.scm
				["af"] = "@function.outer",
				["if"] = "@function.inner",
				["ac"] = "@class.outer",
				["ic"] = "@class.inner",
			},
		},
	},
	rainbow = { enable = true, extended_mode = true },
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
		-- config = {
		-- 	javascript = {
		-- 		__default = '// %s',
		-- 		jsx_element = '{/* %s */}',
		-- 		jsx_fragment = '{/* %s */}',
		-- 		jsx_attribute = '// %s',
		-- 		comment = '// %s'
		-- 	}
		-- }
	}
}
