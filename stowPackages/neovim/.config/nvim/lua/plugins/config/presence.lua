-- ###############################
-- ## Plugin Config
-- ## 
-- ## 'andweeb/presence.nvim'
-- ## by: cindrmon
-- ###############################

-- For more information, run `:help options`

-- setup presence
local status_ok, presence = pcall(require, "presence")
if not status_ok then
	return
end

presence:setup({
	-- General Options
	auto_update			= true,							-- update activity based on autocmd events (if `false`, map or manually execute `:lua package.loaded.presence:update()`)
	neovim_image_text	= "Me Me Big Boy",				-- Text displayed when hovered over the Neovim Image
	main_image			= "file",						-- main image display (either "neovim" or "file")
	client_id			= "793271441293967371",			-- Use your own discord application client ID (not recommended)
	log_level			= nil,							-- Log messages at or above this level (one of the ff: "debug", "info", "warn", "error")
	debounce_timeout	= 10,							-- Number of seconds to debounce events (or calles to `:lua package.loaded.presence.update(<filename>, true)`)
	enable_line_number	= true,							-- Displays the current line number instead of the current project
	blacklist			= {},							-- a list of strings or lua patterns that disable Rich Presence if the current file na,e. path, or workspace matches
	buttons				= true,							-- configure Rich Presence button(s), either a boolean to enable/disable, a static table (`{{ label = "<label>", url = "<url>" }, ...}`, or a function(buffer: string, repo_url: string|nil: table)
	file_assets			= {},							-- custom file asset definitions keyed by file names and extensions (see default config at `lua/presence/file_assets.lua` for reference)

	-- Rich Presence Text Options
	editing_text		= "Editing %s",					-- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
	file_explorer_text	= "Browsing %s",				-- Format string rendered when browsing a file explorer (either string or function(filename: string): string)
	git_commit_text		= "Committing Changes...",		-- Format string rendered when committing changes in git (either string or function(filename: string): string)
	plugin_manager_text = "Managing Plugins...",		-- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
	reading_text		= "Reading %s",					-- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
	workspace_text		= "Working on %s",				-- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
	line_number_text	= "Line %s out of %s",			-- Format string rendered when `enable_line_number` is set to true (either string or functino(line_number: number, line-count: number): string)
})

-- vim:fileencoding=utf-8:foldmethod=marker

