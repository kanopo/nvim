local M = {}

M = {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    config = function()
        require('which-key').setup()

        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end
}

return M
