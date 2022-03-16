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
	auto_close          = true,
	open_on_tab         = true,
	quit_on_open 		= true,
	hijack_cursor       = false,
	update_cwd          = false,
	update_focused_file = {
		enable      = true,
		update_cwd  = true,
		ignore_list = {}
	},
	system_open = {
		cmd  = nil,
		args = {}
	},
	git = {
		enable = true,
		ignore = true,
	},
	diagnostics     = {
		enable = true,
		icons = {
			error   = '',
			warning = '',
			info    = '',
			hint    = '',
			ok      = '',
		},
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
	},
	open_file = {
		quit_on_open = true,
		resize_window = false,
		window_picker = {
			enable = true,
			chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
			exclude = {
				filetype = {
					"notify",
					"packer",
					"qf",
					"diff",
					"fugitive",
					"fugitiveblame",
					'vim-plug',
				},
				buftype  = {
					"nofile",
					"terminal",
					"help",
				},
			}
		}
	}
}
