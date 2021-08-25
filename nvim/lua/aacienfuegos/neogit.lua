local neogit = require('neogit')

neogit.setup {}

vim.api.nvim_set_keymap("n", "<Leader>gc", ":Neogit commit<CR>", {silent = true})
