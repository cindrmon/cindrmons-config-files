-- ###############################
-- ## Updated Neovim Config Files
-- ## 
-- ## custom colorscheme config
-- ## by: cindrmon
-- ###############################


-- For more information, run `:help options`

-- ENTER COLOR SCHEME HERE (default: "default")
local colorscheme = "iceberg"

-- SETS CUSTOM COLOR SCHEME
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	vim.notify("colorscheme " .. colorscheme .. " not found..")
	return
end

-- DISABLE NEOVIM BACKGROUND
vim.cmd [[
	augroup disable_background
		autocmd VimEnter * highlight	Normal guibg=NONE ctermbg=NONE		" disable neovim background
		autocmd VimEnter * highlight!	link CursorColumn CursorLine		" keep colorscheme background color for cursor column and line instead
	augroup end
]]

-- vim:fileencoding=utf-8:foldmethod=marker

