vim.g.copilot_assume_mapped = true
vim.g.copilot_no_tab_map = true

vim.api.nvim_set_keymap('i', '<C-J>', 'copilot#Accept("")', { silent = true, script = true, expr = true })
