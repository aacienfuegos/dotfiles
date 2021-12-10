vim.g.lf_map_keys = 0
vim.api.nvim_set_keymap("n", "<leader>o", ":LfCurrentFile<CR>", {noremap = true, silent = true})

-- " Open lf instead of NERDTree
vim.g.NERDTreeHijackNetrw = 0
vim.g.lf_replace_netrw = 1
