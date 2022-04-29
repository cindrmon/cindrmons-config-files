

require('Comment').setup(
{
  -- Add a space b/w comment and the line @type boolean|fun():boolean
  padding = false,

  -- Whether the cursor should stay at its position
  -- NOTE: This only affects NORMAL mode mappings and doesn't work with dot-repeat
  -- @type boolean
  sticky = true,

  -- Lines to be ignored while comment/uncomment.
  -- Could be a regex string or a function that returns a regex string.
  -- Example: Use '^$' to ignore empty lines
  -- @type string|fun():string
    ignore = nil,

  -- LHS of toggle mappings in NORMAL + VISUAL mode @type table
  toggler =
  {
    line = 'gcc',  -- Line-comment toggle keymap
    block = 'gbc', -- Block-comment toggle keymap
  },

  -- LHS of operator-pending mappings in NORMAL + VISUAL mode @type table
  opleader =
  {
    line = 'gc',  -- Line-comment keymap
    block = 'gb', -- Block-comment keymap
  },

  -- LHS of extra mappings @type table
  extra =
  {
    above = 'gcO', -- Add comment on the line above
    below = 'gco', -- Add comment on the line below
    eol = 'gcA',   -- Add comment at the end of line
  },

  -- Create basic (operator-pending) and extended mappings for NORMAL + VISUAL mode
  -- NOTE: If `mappings = false` then the plugin won't create any mappings
  -- @type boolean|table
  mappings =
  {
    -- Operator-pending mapping
    -- Includes `gcc`, `gbc`, `gc[count]{motion}` and `gb[count]{motion}`
    -- NOTE: These mappings can be changed individually by `opleader` and `toggler` config
    basic = true,
    -- Extra mapping
    -- Includes `gco`, `gcO`, `gcA`
    extra = true,
    -- Extended mapping
    -- Includes `g>`, `g<`, `g>[count]{motion}` and `g<[count]{motion}`
    extended = false,
  },

  -- Pre-hook, called before commenting the line
  -- @type fun(ctx: Ctx):string
  pre_hook = nil,

  -- Post-hook, called after commenting is done
  -- @type fun(ctx: Ctx)
  post_hook = nil,
})
