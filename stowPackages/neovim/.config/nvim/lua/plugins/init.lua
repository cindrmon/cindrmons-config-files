-- ###############################
-- ## Updated Neovim Config Files
-- ## 
-- ## plugins
-- ## by: cindrmon
-- ###############################

-- For more information, run `:help options`

-- LOCAL STUFF {{{
local fn = vim.fn
local function conf(name)
	return require(string.format('plugins.config.%s', name))
end
-- }}}

-- PLUGINS {{{
plugins = {
	-- Core Plugins
	"nvim-lua/popup.nvim",				-- An implementation of the Popup API from vim in Neovim
	"nvim-lua/plenary.nvim",			-- Useful lua functions used ny lots of plugins

	-- For Color Schemes (iceberg)
	{
		"norcalli/nvim-colorizer.lua",
		config = conf "colorizer"
	},
	"cocopon/iceberg.vim",

	-- Icons
	"kyazdani42/nvim-web-devicons",

	-- Discord Presence
	{
		"andweeb/presence.nvim",
		config = conf "presence"
	},

	-- Emmet
	"mattn/emmet-vim",					-- HTML/CSS Emmet

	-- Telescope							-- Highly extendable fuzzy finder over lists.
	{
		"nvim-telescope/telescope.nvim",
		"nvim-telescope/telescope-media-files.nvim",
		"nvim-telescope/telescope-project.nvim",
		config = conf "telescope"
	},

	-- Treesitter							-- Better Syntax Highlighting
	{
		"nvim-treesitter/nvim-treesitter",
		"nvim-treesitter/playground",
		run = ":TSUpdate",
		config = conf "treesitter"
	},
	"p00f/nvim-ts-rainbow",

	-- Sudo Support
	{
		'lambdalisue/suda.vim',
		config = conf "suda"
	},

	-- Commenting
	{
		"numToStr/Comment.nvim",
		config = conf "comment"
	},

	-- Auto Bracket Pairing
	{
		"windwp/nvim-autopairs",
		config = conf "autopairs",
	},

	-- Git
	"lewis6991/gitsigns.nvim",
	"tpope/vim-fugitive",

	-- Lualine Custom Status Statusline
	{
		"nvim-lualine/lualine.nvim",
		config = conf "lualine"
	},

	-- Projects
	{
		"ahmedkhalf/project.nvim",
		config = conf "project",
	},

	-- Terminal
	{
		"akinsho/toggleterm.nvim",
		tag = "v1.*",
		commit = "aaeed9e02167c5e8f00f25156895a6fd95403af8",
		config = conf "toggleterm",
	},

	-- Tab Bar
	{
		"romgrk/barbar.nvim",
		config = conf "barbar",
	},

	-- File Tree
	{
		"kyazdani42/nvim-tree.lua",
		config = conf "nvim-tree",
	},

	-- Neovim Greeter
	{
		"goolord/alpha-nvim",
		config = conf "alpha",
	},

	-- Sublimetext-like line movement
	"booperlv/nvim-gomove",

	-- CMP (Completion Plugins) and Snippets
	{
		"hrsh7th/nvim-cmp",					-- Completion Plugin
		"hrsh7th/cmp-buffer",				-- Buffer Completions
		"hrsh7th/cmp-path",					-- Path Completions
		"hrsh7th/cmp-cmdline",				-- Cmdline Completions
		"hrsh7th/cmp-nvim-lsp",				-- LSP Support
		"saadparwaiz1/cmp_luasnip",			-- Snippet Completions
		"L3MON4D3/LuaSnip",					-- Snippet Engine
		"rafamadriz/friendly-snippets",		-- Snippet Completions
		config = conf "cmp"
	},

	-- LSP
	"neovim/nvim-lspconfig",			-- Enable LSP
	"williamboman/nvim-lsp-installer",	-- Simple to use LSP Installer
	"jose-elias-alvarez/null-ls.nvim"
}
--- }}}

-- Packer Auto-Setup {{{

-- Automatically Install Packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system {
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	}
	print "Installing packer close and reopen Neovim..."
	vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the current init.lua file
vim.cmd [[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost init.lua source <afile> | PackerSync
	augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init {
	display = {
		open_fn = function()
			return require("packer.util").float { border = "rounded" }
		end,
	},
}

return packer.startup(function(use)

	-- Have packer manage itself
	use "wbthomason/packer.nvim"

	-- Auto-install from table
	for _, plugin in ipairs(plugins) do
		use(plugin)
	end

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
-- }}}

-- vim:fileencoding=utf-8:foldmethod=marker
