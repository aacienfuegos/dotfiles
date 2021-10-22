local lsp_status = require('lsp-status')

-- LSP
local updated_capabilities = vim.lsp.protocol.make_client_capabilities()
updated_capabilities = vim.tbl_deep_extend("keep", updated_capabilities, lsp_status.capabilities)
require('lspconfig').util.default_config.capabilities = updated_capabilities

lsp_status.register_progress()
