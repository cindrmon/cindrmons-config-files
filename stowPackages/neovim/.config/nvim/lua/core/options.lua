-- ###############################
-- ## Updated Neovim Config Files
-- ## 
-- ## core options
-- ## by: cindrmon
-- ###############################

-- For more information, run `:help options`

-- EDITOR {{{
vim.opt.showmatch = true				-- show matching bracket
vim.opt.number = true					-- show numbered lines
vim.opt.relativenumber = true			-- show relative numbered lines
-- }}}

-- INDENTATION AND TABS {{{
vim.opt.tabstop = 4						-- number of characters that is indicated as a tab
vim.opt.softtabstop = 4					-- see multiple spaces as tabstops so <BS> does the right thing
vim.opt.shiftwidth = 4					-- the number of spaces inserted for each indentation
vim.opt.autoindent = true				-- indent a new line the same amount as the line just typed
vim.opt.smartindent = true				-- enable smart indenting
-- }}}

-- EXTERNAL INPUT {{{
vim.opt.mouse = "a"						-- enable mouse usage in neovim
vim.opt.clipboard = "unnamedplus"		-- allows neovim to access the system clipboard
-- }}}

-- CURSOR POSITION {{{
vim.opt.cursorline = true				-- highlights current line
vim.opt.cursorcolumn = true				-- highlights current column
-- }}}

-- SEARCH {{{
vim.opt.hlsearch = true					-- highlight search
vim.opt.incsearch = true				-- incremental search
-- }}}

-- FILE MANAGEMENT {{{
vim.opt.swapfile = false				-- creates a swapfile
vim.opt.backup = false					-- creates a backup file
vim.opt.writebackup = false				-- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.backupdir="~/.cache/nvim"		-- directory to store backup files
vim.opt.undofile = true					-- enable persistent undo
vim.opt.fileencoding = "utf-8"			-- encoding written to a file
-- }}}

-- TERMINAL {{{
vim.opt.shellcmdflag = "-ic"			-- help make current shell interactive
-- }}}

-- TEXT {{{
vim.opt.wrap = false					-- enable word wrap
vim.opt.smartcase = true				-- enable smartcase
vim.opt.scrolloff = 7					-- number of lines visible relative to the cursor
vim.opt.guifont = "monospace:h17"		-- font used in graphical neovim applications
-- }}}

-- COLORS {{{
vim.opt.termguicolors = true			-- enable more colours in TUI
-- }}}

-- MENU AND COMMANDS PROMPT {{{
vim.opt.pumheight = 10					-- pop up menu height
vim.opt.cmdheight = 2					-- more space in the neovim command line for displaying messages
-- }}}

-- OTHER {{{
vim.opt.signcolumn = "yes"				-- always show the sign column, otherwise it would shift the text each time.
-- }}}


-- vim:fileencoding=utf-8:foldmethod=marker

