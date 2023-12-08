return {
	"mfussenegger/nvim-lint",
	event = {
		"BufReadPre",
		"BufNewFile",
	},

	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			python = { "flake8" },
			lua = { "luacheck" },
			typescript = { "eslint_d" },
			javascript = { "eslint_d" },
			latex = { "vale" },
		}
		--
		-- local lint_auto_group = vim.api.nvim_create_augroup("lint", {
		-- 	clear = true,
		-- })
		--
		-- vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
		-- 	group = lint_auto_group,
		-- 	callback = function()
		-- 		lint.try_lint()
		-- 	end,
		-- })
	end,
}
