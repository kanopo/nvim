local M = {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    {
      "nvim-treesitter/nvim-treesitter-textobjects",
      event = "VeryLazy",
    },
  },
}
function M.config()
  require("nvim-treesitter.configs").setup {
    sync_install = false,
    auto_install = true,
    highlight = {
      enable = true,
    },

    indent = { enable = true },

    autotag = { enable = true },

    context_commentstring = {
      enable = true,
      enable_autocmd = false,
    },

    autopairs = { enable = true },
  }
end

return M
