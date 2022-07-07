-- ###############################
-- ## Plugin Config
-- ## 
-- ## 'nvim-telescope/telescope'
-- ## by: cindrmon
-- ###############################

-- For more information, run `:help options`

local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

local actions = require "telescope.actions"

-- Telescope-media-files
telescope.load_extension("media_files")

telescope.setup {
  defaults = {

    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },
    file_ignore_patterns = { ".git/", "node_modules" },

    mappings = {
      i = {
        ["<Down>"] = actions.cycle_history_next,
        ["<Up>"] = actions.cycle_history_prev,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
    },
  },
  extensions = {
	  media_files = {
		-- filetypes whitelist
		-- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
		filetypes = {"png", "jpg", "jpeg", "webp", "pdf"},
		find_cmd = "rg"		-- find command (defaults to `fd`)
	  }
  }
}


-- vim:fileencoding=utf-8:foldmethod=marker

