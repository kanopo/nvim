local M = {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    signs = true,
    keywords = {
      TODO = { icon = " ", color = "info", alt = { "FIXME", "BUG", "FIXIT", "FIX", "ISSUE" } },
      WIP = { icon = " ", color = "warning", alt = { "HACK" } },
    },
  },
}

return M
