local nmap = function(key, cmd, desc)
	vim.api.nvim_set_keymap("n", key, cmd, { noremap = true, silent = true, desc = desc })
end

return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
			hover = {
				enable = true,
				delay = 300,
				reveal = { "close" },
			},
		},
	},
	config = function(_, opts)
		nmap("<S-h>", "<cmd>:BufferLineCyclePrev<cr>", { silent = true, desc = "Previous tab" })
		nmap("<S-l>", "<cmd>:BufferLineCycleNext<cr>", { silent = true, desc = "Next tab" })
		nmap("<S-j>", "<cmd>:BufferLineMovePrev<cr>", { silent = true, desc = "Move tab left" })
		nmap("<S-k>", "<cmd>:BufferLineMoveNext<cr>", { silent = true, desc = "Move tab right" })
		nmap("<S-w>", "<cmd>:bdelete<cr>", { silent = true, desc = "Close tab" })

		require("bufferline").setup(opts)
	end,
}
