require('aacienfuegos.nvimtree.options')
require('aacienfuegos.nvimtree.icons')

require'nvim-tree'.setup {
	disable_netrw       = true,
	hijack_netrw        = true,
	open_on_setup       = false,
	-- ignore_ft_on_setup  = { '.git', 'node_modules', '.cache' },
	ignore_ft_on_setup  = { 'startify', 'dashboard' },
	update_to_buf_dir   = {
		enable = true,
		auto_open = true,
	},
	auto_cose          = true,
	open_on_tab         = true,
	hijack_cursor       = false,
	update_cwd          = false,
	lsp_diagnostics     = true,
	update_focused_file = {
		enable      = true,
		update_cwd  = true,
		ignore_list = {}
	},
	system_open = {
		cmd  = nil,
		args = {}
	},
	view = {
		width = 30,
		height = 30,
		side = 'left',
		auto_resize = false,
		mappings = {
			custom_only = true,
			list = require('aacienfuegos.nvimtree.keybinds')
		}
	}
}
