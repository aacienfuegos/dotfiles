vim.g.copilot_assume_mapped = true
vim.g.copilot_no_tab_map = true

vim.api.nvim_set_keymap('i', '<C-I>', 'copilot#Accept("\\<CR>")', { silent = true, script = true, expr = true })
