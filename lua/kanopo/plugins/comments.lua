local M = {
    "numToStr/Comment.nvim",
    keys = {
        {
            'gc',
            mode = 'v',
            '<Plug>(comment_toggle_linewise_visual)'
        },
    },
    opts = {
        mappings = {
            basic = false,
            extra = false,
        },
    },
}

return M
