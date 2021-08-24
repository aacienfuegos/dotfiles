vim.g.nvim_tree_side = 'left'
vim.g.nvim_tree_width = 30
vim.g.nvim_tree_ignore = { '.git', 'node_modules', '.cache' }
vim.g.nvim_tree_gitignore = 1
vim.g.nvim_tree_auto_open = 0 -- opens the tree when typing `vim $DIR` or `vim`
vim.g.nvim_tree_auto_close = 1 -- closes the tree when it's the last window
vim.g.nvim_tree_auto_ignore_ft = { 'startify', 'dashboard' } --don't auto open tree on specific filetypes.
vim.g.nvim_tree_quit_on_open = 1 -- closes the tree when you open a file
vim.g.nvim_tree_follow = 1 -- this option allows the cursor to be updated when entering a buffer
vim.g.nvim_tree_indent_markers = 1 -- this option shows indent markers when folders are open
vim.g.nvim_tree_hide_dotfiles = 1 -- this option hides files and folders starting with a dot `.`
vim.g.nvim_tree_git_hl = 0 -- will enable file highlight for git attributes (can be used without the icons).
vim.g.nvim_tree_highlight_opened_files = 1 -- will enable folder and file icon highlight for opened files/directories.
vim.g.nvim_tree_root_folder_modifier = ':~' --This is the default. See :help filename-modifiers for more options
vim.g.nvim_tree_tab_open = 1 --0 by default, will open the tree when entering a new tab and the tree was previously open
vim.g.nvim_tree_auto_resize = 0 --1 by default, will resize the tree to its saved width when opening a file
vim.g.nvim_tree_disable_netrw = 1 -- disables netrw
vim.g.nvim_tree_hijack_netrw = 1 -- prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)
vim.g.nvim_tree_add_trailing = 1 -- append a trailing slash to folder names
vim.g.nvim_tree_group_empty = 1 -- compact folders that only contain a single folder into one node in the file tree
vim.g.nvim_tree_lsp_diagnostics = 1 -- will show lsp diagnostics in the signcolumn. See :help nvim_tree_lsp_diagnostics
vim.g.nvim_tree_disable_window_picker = 1 --0 by default, will disable the window picker.
vim.g.nvim_tree_hijack_cursor = 0 --1 by default, when moving cursor in the tree, will position the cursor at the start of the file on the current line
vim.g.nvim_tree_icon_padding = ' ' --one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
vim.g.nvim_tree_symlink_arrow = ' ➛ ' -- used as a separator between symlinks' source and target.
vim.g.nvim_tree_update_cwd = 1 -- will update the tree cwd when changing nvim's directory (DirChanged event). Behaves strangely with autochdir set.
vim.g.nvim_tree_respect_buf_cwd = 1 -- will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
vim.g.nvim_tree_window_picker_exclude = {
	filetype = {
		'packer',
		'vim-plug',
		'qf'
	},
	buftype = {
		'terminal'
	}
}
--  Dictionary of buffer option names mapped to a list of option values that
--  indicates to the window picker that the buffer's window should not be
--  selectable.
vim.g.nvim_tree_special_files = { ['README.md'] = 1, Makefile = 1, MAKEFILE = 1 } -- List of filenames that gets highlighted with NvimTreeSpecialFile
vim.g.nvim_tree_show_icons = {
    git = 1,
    folders = 1,
    files = 1,
    folder_arrows = 1,
    }
--  If 0, do not show the icons for one of 'git' 'folder' and 'files'
--  notice that if 'files' is 1, it will only display
--  if nvim-web-devicons is installed and on your runtimepath.
--  if folder is 1, you can also tell folder_arrows 1 to show small arrows next to the folder icons.
--  but this will not work when you set indent_markers (because of UI conflict)
