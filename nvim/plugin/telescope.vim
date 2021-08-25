" File search
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files({hidden=true})<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" Github
nnoremap <leader>gi <cmd> lua require('telescope').extensions.gh.issues()<cr>
nnoremap <leader>gr <cmd> lua require('telescope').extensions.gh.pull_request()<cr>
nnoremap <leader>gg <cmd> lua require('telescope').extensions.gh.gist()<cr>
nnoremap <leader>gr <cmd> lua require('telescope').extensions.gh.run()<cr>
