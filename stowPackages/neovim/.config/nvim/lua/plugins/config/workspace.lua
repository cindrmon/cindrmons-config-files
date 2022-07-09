
local status_ok, workspaces = pcall(require, "workspaces")
if not status_ok then
	return
end

workspaces.setup()

local tele_status_ok, telescope = pcall(require, "telescope")
if not tele_status_ok then
	return
end

telescope.load_extension('workspaces')

