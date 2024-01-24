local M = {}

M = {
    'numToStr/Comment.nvim',
    event = 'BufRead',
    config = function()
        require('Comment').setup({
            padding = true,
            ignore = '^$',
        })
    end,
}

return M
