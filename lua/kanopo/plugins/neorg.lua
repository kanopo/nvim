local M = {}

M = {
	"nvim-neorg/neorg",
	build = ":Neorg sync-parsers",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("neorg").setup({
			load = {
				["core.defaults"] = {},
				["core.concealer"] = {
					config = {
						icon_preset = "varied",
					},
				},
				["core.export"] = {
					config = {},
				},
				["core.export.markdown"] = {},
				["core.completion"] = {
					config = {
						engine = "nvim-cmp",
					},
				},
				["core.dirman"] = {
					config = {
						workspaces = {
							me = "~/Documents/notes/me",
							work = "~/Documents/notes/work",
							uni = "~/Documents/notes/uni",
						},
						index = "main.norg",
						default_workspace = "me",
					},
				},
				["core.esupports.indent"] = {
					config = {
						dedent_excess = true,
						format_on_enter = true,
						format_on_escape = true,
					},
				},
				["core.esupports.metagen"] = {
					config = {
						type = "auto",
					},
				},
			},
		})
	end,
}

return M
