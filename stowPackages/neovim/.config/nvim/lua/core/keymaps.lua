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
--kmap("n", "<leader>n", ":tabnew<cr>", opts)
--kmap("n", "<leader>h", ":tabprevious<cr>", opts)
--kmap("n", "<leader>l", ":tabnext<cr>", opts)
--kmap("n", "<leader>c", ":tabclose<cr>", opts)
-- }}}

-- NEOVIM EXPLORER {{{
kmap("n", "<A-v>", ":Lex 30<cr>", opts)
-- }}}

-- CUSTOM VISUAL COMMANDS {{{
	-- Stay in Indent Mode {{{
	kmap("v", "<", "<gv", opts)
	kmap("v", ">", ">gv", opts)
	-- }}}
	
	-- Now I wouldn't need to worry what's on the paste register anymore! {{{
	kmap("v", "p", '"_dP', opts)
	-- }}}
-- }}}

-- PLUGIN KEYMAPS {{{

-- LSP
kmap("n", "<leader>f", ":Format<cr>", opts)

-- BarBar
kmap("n", "<A-t>", ":tabnew<cr>", opts)
kmap("n", "<A-h>", ":BufferPrevious<cr>", opts)
kmap("n", "<A-l>", ":BufferNext<cr>", opts)
kmap("n", "<A-H>", ":BufferMovePrevious<cr>", opts)
kmap("n", "<A-L>", ":BufferMoveNext<cr>", opts)
kmap("n", "<A-c>", ":BufferClose<cr>", opts)

-- Telescope
kmap("n", "<leader>tf", ":Telescope find_files<CR>", opts)
kmap("n", "<leader>tt", ":Telescope live_grep<CR>", opts)
kmap("n", "<leader>tp", ":Telescope projects<CR>", opts)
kmap("n", "<leader>tw", ":Telescope workspaces<CR>", opts)
kmap("n", "<leader>tb", ":Telescope buffers<CR>", opts)

-- Comment
kmap("n", "<C-_>", "<Plug>(comment_toggle_current_linewise)<CR>", opts)
kmap("v", "<C-_>", "<Plug>(comment_toggle_current_visual)<CR>", opts)
kmap("i", "<C-_>", "<ESC><Plug>(comment_toggle_current_linewise)<CR>ki", opts)

-- nvim-tree
kmap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- GoMove
kmap("n", "<leader><S-h>", "<Plug>GoNSMLeft", opts)
kmap("n", "<S-j>", "<Plug>GoNSMDown", opts)
kmap("n", "<S-k>", "<Plug>GoNSMUp", opts)
kmap("n", "<leader><S-l>", "<Plug>GoNSMRight", opts)

kmap("n", "<leader><C-h>", "<Plug>GoNSDLeft", opts)
kmap("n", "<leader><C-j>", "<Plug>GoNSDDown", opts)
kmap("n", "<leader><C-k>", "<Plug>GoNSDUp", opts)
kmap("n", "<leader><C-l>", "<Plug>GoNSDRight", opts)

kmap("v", "<leader><S-h>", "<Plug>GoVSMLeft", opts)
kmap("v", "<S-j>", "<Plug>GoVSMDown", opts)
kmap("v", "<S-k>", "<Plug>GoVSMUp", opts)
kmap("v", "<leader><S-l>", "<Plug>GoVSMRight", opts)

kmap("v", "<leader><C-h>", "<Plug>GoVSDLeft", opts)
kmap("v", "<leader><C-j>", "<Plug>GoVSDDown", opts)
kmap("v", "<leader><C-k>", "<Plug>GoVSDUp", opts)
kmap("v", "<leader><C-l>", "<Plug>GoVSDRight", opts)

-- }}}

-- vim:fileencoding=utf-8:foldmethod=marker

