local M = {}

M = {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        options = {
            theme = "gruvbox",
        },
    },
    config = function(_, opts)
        require("lualine").setup(opts)
    end
}

return M
