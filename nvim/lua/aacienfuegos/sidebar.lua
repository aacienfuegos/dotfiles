require("sidebar-nvim").setup({
	disable_default_keybindings = 0,
	bindings = nil,
	open = true,
	side = "left",
	initial_width = 30,
	hide_statusline = true,
	update_interval = 1000,
	sections = {
		"datetime",
		"todos",
		"git",
		"containers",
		"diagnostics",
		require("dap-sidebar-nvim.breakpoints")
	},
	section_separator = "-----",
	disable_closing_prompt = true,
	containers = {
		attach_shell = "/bin/sh",
		show_all = true,
		interval = 5000,
	},
	datetime = {
		icon = "",
		format = "%a %b %d, %H:%M",
		clocks = {
			{ name = "local" },
		}
	},
	todos = {
		ignored_paths = { "~" }
	},
	dap = {
		icon = ""
	},
})
