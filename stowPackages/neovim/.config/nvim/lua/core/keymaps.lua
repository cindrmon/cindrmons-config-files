-- ###############################
-- ## Updated Neovim Config Files
-- ## 
-- ## custom keymaps
-- ## by: cindrmon
-- ###############################

-- For more information, run `:help options`

-- KEYMAP OPTIONS {{{
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
-- }}}

-- LOCAL CONSTS {{{
local kmap = vim.api.nvim_set_keymap
-- }}}

-- REMAP LEADER KEY {{{
kmap("", "<Space>", "Nop", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- }}}

-- BETTER WINDOW NAVIGATION {{{
kmap("n", "<C-h>", "<C-w>h", opts)
kmap("n", "<C-j>", "<C-w>j", opts)
kmap("n", "<C-k>", "<C-w>k", opts)
kmap("n", "<C-l>", "<C-w>l", opts)
--- }}}

-- BETTER FOLDS {{{
kmap("n", "<S-Tab>", "za", opts)
-- }}}

-- WINDOW MANAGEMENT {{{
kmap("n", "<leader>wh", ":split<cr>", opts)
kmap("n", "<leader>wv", ":vsplit<cr>", opts)
kmap("n", "<leader>wc", ":close<cr>", opts)
-- }}}

-- BUFFER MANAGEMENT {{{
kmap("n", "<S-l>", ":bnext<cr>", opts)
kmap("n", "<S-h>", ":bprevious<cr>", opts)
-- }}}

-- TAB MANAGEMENT {{{
kmap("n", "<leader>n", ":tabnew<cr>", opts)
kmap("n", "<leader>h", ":tabprevious<cr>", opts)
kmap("n", "<leader>l", ":tabnext<cr>", opts)
kmap("n", "<leader>c", ":tabclose<cr>", opts)
-- }}}

-- NEOVIM EXPLORER {{{
kmap("n", "<leader>e", ":Lex 30<cr>", opts)
-- }}}

-- CUSTOM VISUAL COMMANDS {{{
	-- Stay in Indent Mode {{{
	kmap("v", "<", "<gv", opts)
	kmap("v", ">", ">gv", opts)
	-- }}}
	
	-- Move Selected Text Up and Down {{{
	kmap("x", "<S-j>", ":move '>+1<CR>gv-gv", opts)
	kmap("x", "<S-k>", ":move '<-2<CR>gv-gv", opts)
	kmap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
	kmap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
	-- }}}
	
	-- Now I wouldn't need to worry what's on the paste register anymore! {{{
	kmap("v", "p", '"_dP', opts)
	-- }}}
-- }}}

-- PLUGIN KEYMAPS {{{

-- Telescope
kmap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
kmap("n", "<leader>ft", ":Telescope live_grep<CR>", opts)
kmap("n", "<leader>fp", ":Telescope projects<CR>", opts)
kmap("n", "<leader>fb", ":Telescope buffers<CR>", opts)

-- Comment
kmap("n", "<C-_>", "<Plug>(comment_toggle_current_linewise)<CR>", opts)
kmap("v", "<C-_>", "<Plug>(comment_toggle_current_visual)<CR>", opts)
kmap("i", "<C-_>", "<ESC><Plug>(comment_toggle_current_linewise)<CR>ki", opts)

-- nvim-tree
kmap("n", "<A-v>", ":NvimTreeToggle<CR>", opts)

-- }}}

-- vim:fileencoding=utf-8:foldmethod=marker

