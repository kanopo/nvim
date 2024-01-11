local M = {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		signs = true,
		keywords = {
			TODO = { icon = "🤡", color = "info" },
			WIP = { icon = "🚧", color = "warning" },
			BUG = { icon = "🐞", color = "error" },
		},
	},
}

return M

-- TODO:
-- WIP:
-- BUG:
