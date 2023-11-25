return {
	"stevearc/conform.nvim",
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				javascript = {
					"prettier",
				},
				typescript = {
					"prettier",
				},
				lua = {
					"stylua",
				},
				python = {
					"black",
				},
				latex = {
					"latexindent",
				},
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>cf", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			})
		end, { silent = true })
	end,
}
