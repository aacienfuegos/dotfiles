require('neorg').setup {
	-- Tell Neorg what modules to load
	load = {
		["core.defaults"] = {}, -- Load all the default modules
		["core.concealer"] = {}, -- Allows for use of icons
		["core.keybinds"] = { -- Configure core.keybinds
			config = {
				hook = function(keybinds)
					require('aacienfuegos.neorg.keybinds')
					hook_function(keybinds)
				end
			}
		},
		["core.dirman"] = { -- Manage your directories with Neorg
			config = {
				workspaces = {
					notes = "~/notes"
				},
				autodetect = true,
				autochdir = true,
			}
		},
		["core.completion"] = {
			config = {
				engine = "nvim-cmp"
			}
		},
		["core.integrations.telescope"] = {}, -- Enable the telescope module
	},

}

local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()

parser_configs.norg = {
	install_info = {
		url = "https://github.com/vhyrro/tree-sitter-norg",
		files = { "src/parser.c", "src/scanner.cc" },
		branch = "main"
	},
}
