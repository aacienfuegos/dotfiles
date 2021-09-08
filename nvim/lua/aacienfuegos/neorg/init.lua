require('neorg').setup {
	-- Tell Neorg what modules to load
	load = {
		["core.defaults"] = {}, -- Load all the default modules
		["core.norg.concealer"] = {}, -- Allows for use of icons
		-- ["core.keybinds"] = { -- Configure core.keybinds
		-- 	config = {
		-- 		default_keybinds = true, -- Generate the default keybinds
		-- 		neorg_leader = "<Leader>o" -- This is the default if unspecified
		-- 	}
		-- },
		["core.norg.dirman"] = { -- Manage your directories with Neorg
			config = {
				workspaces = {
					notes = "~/ncloud/Notes/notes"
				},
				autodetect = true,
				autochdir = true,
			}
		},
		["core.norg.completion"] = {
			config = {
				engine = "nvim-compe"
			}
		},
		["core.integrations.telescope"] = {}, -- Enable the telescope module
	},

	hook = function()
		require('aacienfuegos.neorg.keybinds')
	end
}

local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()

parser_configs.norg = {
	install_info = {
		url = "https://github.com/vhyrro/tree-sitter-norg",
		files = { "src/parser.c", "src/scanner.cc" },
		branch = "main"
	},
}
