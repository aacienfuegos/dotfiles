-- requires snippet support to provide completion
local nvim_lsp = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true;

nvim_lsp.html.setup {
    capabilities = capabilities;
}
