autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
if has('nvim')
	let NERDTreeBookmarksFile = stdpath('data') . '/NERDTreeBookmarks'
else
	let NERDTreeBookmarksFile = '~/.vim' . '/NERDTreeBookmarks'
endif

cnoreabbrev nt NERDTree

map <leader>n :NERDTreeToggle<CR>

let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeStatusline = -1
