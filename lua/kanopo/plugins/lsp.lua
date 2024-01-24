local servers = {
	"lua_ls",
    "tsserver",
    "tailwindcss",
    "glint",
    "html",
    "cssls"
}

local tools = {
	"stylua",
	"luacheck",
    "eslint_d",
    "prettier",
}

local M = {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-nvim-lsp",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		require("mason").setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		require("mason-tool-installer").setup({
			ensure_installed = tools,
		})

		require("mason-lspconfig").setup({
			ensure_installed = {},
			automatic_installation = true,
		})

		local function on_attach(client, bufnr)
			vim.api.nvim_buf_set_keymap(
				bufnr,
				"n",
				"gd",
				"<cmd>lua vim.lsp.buf.definition()<cr>",
				{ noremap = true, silent = true, desc = "[G]o [D]eclaration" }
			)
			vim.api.nvim_buf_set_keymap(
				bufnr,
				"n",
				"lf",
				"<cmd>lua vim.lsp.buf.format()<cr>",
				{ noremap = true, silent = true, desc = "[L]sp [F]ormat" }
			)
			client.server_capabilites.document_formatting = true
		end

		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		for _, server in pairs(servers) do
			require("lspconfig")[server].setup({
				on_attach = on_attach,
				capabilities = capabilities,
			})
		end
	end,
}

return M
