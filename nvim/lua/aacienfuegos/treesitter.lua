require'nvim-treesitter.configs'.setup {
	highlight = { enable = true },
	incremental_selection = { enable = true },
	indent = {
		enable = true,
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
