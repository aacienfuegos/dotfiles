vim.api.nvim_set_keymap("n", "<Leader>n", ":NvimTreeToggle<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<Leader>=", ":lua vim.lsp.buf.formatting()<CR>", { silent = true })
