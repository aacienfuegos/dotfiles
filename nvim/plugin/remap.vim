:ab Q q

" Replace ex mode with gq
map Q gq

" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" Y copies to the end of line
	nnoremap Y y$

" Keep coursor centered
	nnoremap n nzzzv
	nnoremap N Nzzzv
	nnoremap J mzJ'z

" Move text
	vnoremap J :m '>+1<CR>gv=gv
	vnoremap K :m '<-2<CR>gv=gv
	inoremap <C-j> <esc>:m .+1<CR>==
	inoremap <C-k> <esc>:m .-2<CR>==
	nnoremap <leader>j :m .+1<CR>==
	nnoremap <leader>k :m .-2<CR>==

" Mark line when doing relative jump
	nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
	nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'

" End of phrases breaks undo sequence
	inoremap , ,<c-g>u
	inoremap . .<c-g>u
	inoremap ! !<c-g>u
	inoremap ? ?<c-g>u

" Replace all is aliased to S.
	nnoremap SS :%s//g<Left><Left>
	nnoremap Sw "hyiw:%s/<C-r>h//g<left><left>
	vnoremap S "hy:%s/<C-r>h//g<left><left>

" Perform dot commands over visual blocks:
	vnoremap . :normal .<CR>

" Spell-check
	map <leader>s :setlocal spell! spelllang=en_us<CR>

" Compile document, be it groff/LaTeX/markdown/etc.
	map <leader>c :ab! \| !compiler "<c-r>%"<CR>

" Open corresponding .pdf/.html or preview
	map <leader>p :!opout <c-r>%<CR><CR>

" Runs a script that cleans out tex build files whenever I close out of a .tex file.
	autocmd VimLeave *.tex !texclear %

" Save file as sudo on files that require root permission
	ab w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!
