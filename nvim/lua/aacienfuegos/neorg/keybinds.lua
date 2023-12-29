-- This sets the leader for all Neorg keybinds. It is separate from the regular <Leader>,
-- And allows you to shove every Neorg keybind under one "umbrella".
local neorg_leader = "<Leader>o" -- You may also want to set this to <Leader>o for "organization"

function hook_function(keybinds)
	-- Normal mode
	-- Keys for managing TODO items and setting their states
	keybinds.remap_event("norg", "n", neorg_leader .. "d", "core.norg.qol.todo_items.todo.task_done")
	keybinds.remap_event("norg", "n", neorg_leader .. "u", "core.norg.qol.todo_items.todo.task_undone")
	keybinds.remap_event("norg", "n", neorg_leader .. "p", "core.norg.qol.todo_items.todo.task_pending")
	keybinds.remap_event("norg", "n", neorg_leader .. "o", "core.norg.qol.todo_items.todo.task_cycle")
	-- -- Telescope
	keybinds.remap_event("norg", "n", neorg_leader .. "l", "core.integrations.telescope.find_linkable")

	-- Insert mode
	keybinds.remap_event("norg", "i", "<C-l>", "core.integrations.telescope.insert_link")
end
