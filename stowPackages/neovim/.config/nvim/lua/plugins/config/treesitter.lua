-- ###############################
-- ## Plugin Config
-- ## 
-- ## 'nvim-treesitter/nvim-treesitter'
-- ## by: cindrmon
-- ###############################

-- For more information, run `:help options`

local status_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

treesitter.setup {
	sync_install = false,
	ignore_install = { "" },						-- list of parsers to ignore installing
	highlight = {
		enable = true,								-- false will disable the whole extension
		disable = { "" },							-- list of languages that will be disabled
		additional_vim_regex_highlighting = false,
	},
	indent = { enable = true, disable = { "yaml" } },
}

-- vim:fileencoding=utf-8:foldmethod=marker

