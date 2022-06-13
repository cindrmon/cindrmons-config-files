-- Enable coq on startup
  vim.g.coq_settings = { auto_start = 'shut-up' }

-- LSP
  local lsp = require "lspconfig"
  local coq = require "coq"
