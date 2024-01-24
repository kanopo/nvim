local M = {}

M = {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    event = 'BufRead',

    config = function()
        require('ibl').setup()
    end
}

return M
