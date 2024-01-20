local M = {
  "jose-elias-alvarez/null-ls.nvim",
}

function M.config()
  local null_ls = require "null-ls"

  local formatting = null_ls.builtins.formatting
  local diagnostics = null_ls.builtins.diagnostics

  null_ls.setup {
    sources = {
      -- TS
      formatting.eslint_d,
      diagnostics.eslint_d,


      -- python
      formatting.black,
      diagnostics.flake8,
  }
end

return M
