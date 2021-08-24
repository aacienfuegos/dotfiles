require'snippets'.use_suggested_mappings()

local nvim_lsp = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true;

require('aacienfuegos.lsp.bashls')
require('aacienfuegos.lsp.cmake')
require('aacienfuegos.lsp.html')
require('aacienfuegos.lsp.rust_analyzer')
require('aacienfuegos.lsp.tsserver')
