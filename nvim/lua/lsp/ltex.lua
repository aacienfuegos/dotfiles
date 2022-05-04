require 'lspconfig'.ltex.setup {
	on_attach = require('lsp-status').on_attach,
	settings = {
		ltex = {
			statusBarItem = true,
			clearDiagnosticsWhenClosingFile = false,
			["ltex-ls"] = {
				logLevel = "severe",
			}
		},
	},
}
