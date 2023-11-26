local M = {
	"akinsho/bufferline.nvim",
	opts = {
		options = {
			diagnostics = "nvim_lsp",
			hover = {
				enabled = true,
				delay = 0,
				reveal = { "close" },
			},
		},
	},
	config = function(_, opts)
		local bufferline = require("bufferline")
		bufferline.setup(opts)

		vim.api.nvim_set_keymap("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<S-w>", "<cmd>bdelete<cr>", { noremap = true, silent = true })

		vim.api.nvim_set_keymap("n", "<leader>1", "<cmd>BufferLineGoToBuffer 1<cr>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<leader>2", "<cmd>BufferLineGoToBuffer 2<cr>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<leader>3", "<cmd>BufferLineGoToBuffer 3<cr>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<leader>4", "<cmd>BufferLineGoToBuffer 4<cr>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<leader>5", "<cmd>BufferLineGoToBuffer 2<cr>", { noremap = true, silent = true })

		-- add close buffer and add move left and move right
		vim.api.nvim_set_keymap("n", "<leader>pc", "<cmd>BufferLinePickClose<cr>", { noremap = true, silent = true })
	end,
}

return M
