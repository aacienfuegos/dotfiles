-- requires snippet support to provide completion
nvim_lsp.html.setup {
    capabilities = capabilities;
    on_attach = on_attach,
}
