" nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
" nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
" nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> [d <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> ]d <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

" Telescope
nnoremap <silent> gd <cmd>lua require('telescope.builtin').lsp_definitions()<CR>
nnoremap <silent> gr <cmd>lua require('telescope.builtin').lsp_references()<CR>
nnoremap <silent> gi <cmd>lua require('telescope.builtin').lsp_implementations()<CR>
nnoremap <silent> gs <cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>
nnoremap <silent> gS <cmd>lua require('telescope.builtin').lsp_workspace_symbols()<CR>
nnoremap <silent> <leader>d <cmd>lua require('telescope.builtin').lsp_document_diagnostics()<CR>
nnoremap <silent> <leader>D <cmd>lua require('telescope.builtin').lsp_workspace_diagnostics()<CR>
