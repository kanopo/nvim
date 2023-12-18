return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        { "nvim-telescope/telescope-ui-select.nvim" },
        { "nvim-lua/plenary.nvim" },
    },
    keys = {
        { "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", desc = "Telescope Find Files" },
        { "<leader>rg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", desc = "Telescope Live Grep" },

    },
    config = function()
        require('telescope').setup {
          extensions = {
            fzf = {
              fuzzy = true,                       -- false will only do exact matching
              override_generic_sorter = true,     -- override the generic sorter
              override_file_sorter = true,        -- override the file sorter
              case_mode = "smart_case",           -- or "ignore_case" or "respect_case"
            },
            ["ui-select"] = {
              require("telescope.themes").get_dropdown({})
            },
          }
        }
        require('telescope').load_extension('fzf')
        require('telescope').load_extension('ui-select')
    end
}

