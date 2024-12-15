return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    keys = {
        -- { "<leader>t", "<cmd>Neotree current<cr>", desc = "Find current file in neotree" },
        { "<leader>fe", "<cmd>Neotree current<cr>", desc = "Find current file in neotree" },
    }
}
