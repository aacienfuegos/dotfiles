require 'nvim-tree'.setup {
	disable_netrw       = true,
	hijack_netrw        = true,
	open_on_setup       = false,
	-- ignore_ft_on_setup  = { '.git', 'node_modules', '.cache' },
	ignore_ft_on_setup  = { 'startify', 'dashboard' },
	hijack_directories  = {
		enable = true,
		auto_open = true,
	},
	open_on_tab         = false,
	hijack_cursor       = false,
	update_cwd          = false,
	update_focused_file = {
		enable      = true,
		update_cwd  = true,
		ignore_list = {}
	},
	system_open         = {
		cmd  = nil,
		args = {}
	},
	git                 = {
		enable = true,
		ignore = true,
	},
	diagnostics         = {
		enable = true,
		icons = {
			error   = '',
			warning = '',
			info    = '',
			hint    = '',
		},
	},
	view                = {
		width = 30,
		height = 30,
		side = 'left',
		mappings = {
			custom_only = true,
			list = require('aacienfuegos.nvimtree.keybinds')
		}
	},
	actions             = {
		change_dir = {
			enable = true,
			global = false,
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
		},
	},
	renderer            = {
		add_trailing = true,
		group_empty = true,
		highlight_git = false,
		full_name = false,
		highlight_opened_files = "none",
		root_folder_modifier = ":~",
		indent_markers = {
			enable = true,
			inline_arrows = true,
			icons = {
				corner = "└",
				edge = "│",
				item = "│",
				none = " ",
			},
		},
		icons = {
			webdev_colors = true,
			git_placement = "before",
			padding = " ",
			symlink_arrow = " ➛ ",
			show = {
				file = true,
				folder = true,
				folder_arrow = true,
				git = true,
			},
			glyphs = {
				default = "",
				symlink = "",
				bookmark = "",
				folder = {
					arrow_closed = "",
					arrow_open = "",
					default = "",
					open = "",
					empty = "",
					empty_open = "",
					symlink = "",
					symlink_open = "",
				},
				git = {
					unstaged = "✗",
					staged = "✓",
					unmerged = "",
					renamed = "➜",
					untracked = "★",
					deleted = "",
					ignored = "◌",
				},
			},
		},
		special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
		symlink_destination = true,
	},
	log                 = {
		enable = false,
		truncate = false,
		types = {
			all = false,
			config = false,
			git = false,
		},
	},
}
