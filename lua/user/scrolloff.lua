return {
    'Aasim-A/scrollEOF.nvim',
    event = { 'CursorMoved', 'WinScrolled' },
    config = function()
        require('scrollEOF').setup({
            pattern = '*',
            insert_mode = false,
            disabled_filetypes = {},
            disabled_modes = {},
        })
    end
}
