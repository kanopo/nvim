local M = {}

M = {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = {
        'nvim-lua/plenary.nvim',
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make',
            lazy = true
        },
    },
    config = function()
        local telescope = require('telescope').setup({
            pickers = {
                live_grep = {
                    theme = 'dropdown',
                },
                grep_string = {
                    theme = 'dropdown',
                },
                find_files = {
                    theme = 'dropdown',
                },
                buffers = {
                    theme = 'dropdown',
                },
            },
            extensions = {
                fxf = {
                    fuzzy = true,
                    override_generic_sorter = true,
                    override_file_sorter = true,
                    case_mode = 'smart_case',
                },
            },
        })
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { silent = true, desc = '[F]ind [F]iles' })
        vim.keymap.set('n', '<leader>rg', builtin.live_grep, { silent = true, desc = '[R]ip [G]rep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { silent = true, desc = '[F]ind [B]uffer' })
    end
}

return M
