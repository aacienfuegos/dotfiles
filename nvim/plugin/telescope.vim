" File search
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files({hidden=true})<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" Media files
nnoremap <leader>fm <cmd> lua require('telescope').extensions.media_files.media_files()<cr>

" Treesitter
nnoremap <leader>ft <cmd> lua require('telescope.builtin').treesitter()<cr>

" Symbols
nnoremap <leader>fs <cmd> lua require'telescope.builtin'.symbols{ sources = {'emoji', 'gitmoji', 'julia', 'kaomoji'} }<cr>
nnoremap <leader>f= <cmd> lua require'telescope.builtin'.symbols{ sources = {'math'} }<cr>
nnoremap <leader>fl <cmd> lua require'telescope.builtin'.symbols{ sources = {'latex'} }<cr>

" Frecency
nnoremap <leader>f~ <Cmd>lua require('telescope').extensions.frecency.frecency()<CR>

" Git
nnoremap <leader>fc <cmd> lua require('telescope.builtin').git_commits()<cr>
nnoremap <leader>gc <cmd> lua require('telescope.builtin').git_bcommits()<cr>
nnoremap <leader>gb <cmd> lua require('telescope.builtin').git_branches()<cr>
nnoremap <leader>gs <cmd> lua require('telescope.builtin').git_status()<cr>
nnoremap <leader>gS <cmd> lua require('telescope.builtin').git_stash()<cr>

" Github
nnoremap <leader>gi <cmd> lua require('telescope').extensions.gh.issues()<cr>
nnoremap <leader>gr <cmd> lua require('telescope').extensions.gh.pull_request()<cr>
nnoremap <leader>gg <cmd> lua require('telescope').extensions.gh.gist()<cr>
nnoremap <leader>gr <cmd> lua require('telescope').extensions.gh.run()<cr>
