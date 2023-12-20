return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"tsserver",
				"lua_ls",
				"pyright",
				"texlab",
				"clangd",
				"gopls",
				"yamlls",
				"dockerls",
			},
			automatic_installation = true, -- not the same as ensure_installed
		})

		mason_tool_installer.setup({
			ensure_installed = {
				-- javascript
				"prettier",
				"eslint_d",

				-- lua
				"stylua",

				-- python
				"isort",
				"black",
				"pylint",

				-- c
				"clang-format",

				"cfn-lint",
			},
		})
	end,
}
