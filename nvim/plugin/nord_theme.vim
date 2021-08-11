let g:nord_contrast = v:true
let g:nord_borders = v:true
let g:nord_disable_background = v:true
let g:nord_enable_sidebar_background = v:true

lua << EOF
if vim.g.nord_contrast == true then
	vim.cmd [[  autocmd FileType nerdtree setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat]]
end
EOF
