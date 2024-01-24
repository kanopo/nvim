local M = {}

M = {
    'lewis6991/gitsigns.nvim',
    event = 'BufRead',
    config = function()
        require('gitsigns').setup({
            current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
        })
    end
}

return M
