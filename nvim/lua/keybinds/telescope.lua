-- File search
vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files({hidden=true})<cr>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>", {noremap = true, silent = true})

-- Media files
vim.api.nvim_set_keymap("n", "<leader>fm", "<cmd>lua require('telescope').extensions.media_files.media_files()<cr>", {noremap = true, silent = true})

-- LSP
vim.api.nvim_set_keymap("n", "<leader>fd", "<cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>ft", "<cmd>lua require('telescope.builtin').diagnostics()<cr>", {noremap = true, silent = true})

-- Treesitter
-- vim.api.nvim_set_keymap("n", "<leader>ft", "<cmd>lua require('telescope.builtin').treesitter()<cr>", {noremap = true, silent = true})

-- Symbols
vim.api.nvim_set_keymap("n", "<leader>fe", "<cmd>lua require'telescope.builtin'.symbols{ sources = {'emoji', 'gitmoji', 'julia', 'kaomoji'} }<cr>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>f=", "<cmd>lua require'telescope.builtin'.symbols{ sources = {'math'} }<cr>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>fl", "<cmd>lua require'telescope.builtin'.symbols{ sources = {'latex'} }<cr>", {noremap = true, silent = true})

-- Frecency
vim.api.nvim_set_keymap("n", "<leader>f~", "<Cmd>lua require('telescope').extensions.frecency.frecency()<CR>", {noremap = true, silent = true})

-- Git
vim.api.nvim_set_keymap("n", "<leader>fc", "<cmd>lua require('telescope.builtin').git_commits()<cr>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>gb", "<cmd>lua require('telescope.builtin').git_branches()<cr>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>gs", "<cmd>lua require('telescope.builtin').git_status()<cr>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>gS", "<cmd>lua require('telescope.builtin').git_stash()<cr>", {noremap = true, silent = true})

-- Github
vim.api.nvim_set_keymap("n", "<leader>gi", "<cmd>lua require('telescope').extensions.gh.issues()<cr>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>gr", "<cmd>lua require('telescope').extensions.gh.pull_request()<cr>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>gg", "<cmd>lua require('telescope').extensions.gh.gist()<cr>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>gx", "<cmd>lua require('telescope').extensions.gh.run()<cr>", {noremap = true, silent = true})
