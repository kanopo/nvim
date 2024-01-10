local M = {
  "jose-elias-alvarez/null-ls.nvim",
}

function M.config()
  local null_ls = require "null-ls"

  local formatting = null_ls.builtins.formatting

  null_ls.setup {
    sources = {
      formatting.stylua,
      null_ls.builtins.formatting.eslint_d,
      null_ls.builtins.diagnostics.eslint_d,

      null_ls.builtins.formatting.latexindent,
    },
  }
end

return M
