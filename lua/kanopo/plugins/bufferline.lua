local M = {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
    config = function ()
        require("bufferline").setup()

        vim.keymap.set('n', '<S-l>', '<cmd>bnext<cr>', { noremap = true, silent = true })
        vim.keymap.set('n', '<S-h>', '<cmd>bprevious<cr>', { noremap = true, silent = true })
    end
}
return M
