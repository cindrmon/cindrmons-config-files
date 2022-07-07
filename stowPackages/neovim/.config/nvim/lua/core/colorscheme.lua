-- ###############################
-- ## Updated Neovim Config Files
-- ## 
-- ## custom colorscheme config
-- ## by: cindrmon
-- ###############################


-- For more information, run `:help options`

-- VIM API
local api = vim.api
local autocmd = api.nvim_create_autocmd
local augroup = api.nvim_create_augroup

local function augroupc(group_name)
	augroup(group_name, {clear = true})
end


-- ENTER COLOR SCHEME HERE (default: "default")
local colorscheme = "iceberg"

-- SETS CUSTOM COLOR SCHEME
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	vim.notify("colorscheme " .. colorscheme .. " not found..")
	return
end

-- DISABLE NEOVIM BACKGROUND
augroupc("disable_background")

-- Disable Neovim Background
autocmd('VimEnter',
{
	pattern = "*",
	group = "disable_background",
	command = "highlight Normal guibg=NONE ctermbg=NONE"
})

-- keep colorscheme background color for cursor column and line instead 
autocmd('VimEnter',
{
	pattern = "*",
	group = "disable_background",
	command = "highlight! link CursorColumn CursorLine"
})

-- vim:fileencoding=utf-8:foldmethod=marker

