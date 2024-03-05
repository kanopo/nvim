local servers = {
	"lua_ls",
	"tsserver",
	"tailwindcss",
	"glint",
	"html",
	"cssls",
	"texlab",
	"pyright",
	"rust_analyzer",
	"htmx",
	"dockerls",
	"docker_compose_language_service",
	"astro",
	"svelte",
	"clangd",
}

local tools = {
	"stylua",
	"luacheck",
	"eslint_d",
	"prettier",
	"latexindent",
	"flake8",
	"black",
}

local M = {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-nvim-lsp",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		"folke/neodev.nvim",
		"nvim-telescope/telescope.nvim",
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

		require("neodev").setup({})

		local function on_attach(client, bufnr)
			-- show the diagnostic popup
			vim.api.nvim_buf_set_keymap(
				bufnr,
				"n",
				"<space>sd",
				"<cmd>Lspsaga show_cursor_diagnostics<cr>",
				{ noremap = true, silent = true, desc = "Show diagnostic" }
			)

			-- show all diagnostics
			vim.api.nvim_buf_set_keymap(
				bufnr,
				"n",
				"<space>ld",
				"<cmd>Telescope diagnostics<cr>",
				{ noremap = true, silent = true, desc = "List diagnostics" }
			)

			vim.api.nvim_buf_set_keymap(
				bufnr,
				"n",
				"<space>gd",
				"<cmd>Telescope lsp_definitions<cr>",
				{ noremap = true, silent = true, desc = "Definitions" }
			)
			vim.api.nvim_buf_set_keymap(
				bufnr,
				"n",
				"<space>gr",
				"<cmd>Telescope lsp_references<cr>",
				{ noremap = true, silent = true, desc = "References" }
			)
			vim.api.nvim_buf_set_keymap(
				bufnr,
				"n",
				"<space>gD",
				"<cmd>lua vim.lsp.buf.declaration()<cr>",
				{ noremap = true, silent = true, desc = "Declaration" }
			)
			vim.api.nvim_buf_set_keymap(
				bufnr,
				"n",
				"K",
				"<cmd>Lspsaga hover_doc<cr>",
				{ noremap = true, silent = true, desc = "Hover" }
			)

			vim.api.nvim_buf_set_keymap(
				bufnr,
				"n",
				"<space>K",
				"<cmd>lua vim.lsp.buf.signature_help()<cr>",
				{ noremap = true, silent = true, desc = "Signature help" }
			)

			vim.api.nvim_buf_set_keymap(
				bufnr,
				"n",
				"<space>gi",
				"<cmd>Telescope lsp_implementations<cr>",
				{ noremap = true, silent = true, desc = "Implementations" }
			)

			-- rename
			vim.api.nvim_buf_set_keymap(
				bufnr,
				"n",
				"<space>rn",
				"<cmd>lua vim.lsp.buf.rename()<cr>",
				{ noremap = true, silent = true, desc = "Rename" }
			)

			vim.api.nvim_buf_set_keymap(
				bufnr,
				"n",
				"<space>ca",
				"<cmd>lua vim.lsp.buf.code_action()<cr>",
				{ noremap = true, silent = true, desc = "Code actions" }
			)

			-- format
			vim.api.nvim_buf_set_keymap(
				bufnr,
				"n",
				"<space>fb",
				"<cmd>lua vim.lsp.buf.format()<cr>",
				{ noremap = true, silent = true, desc = "Format" }
			)
			client.server_capabilites.document_formatting = true
		end

		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		for _, server in pairs(servers) do
			if server == "lua_ls" then
				require("lspconfig")[server].setup({
					on_attach = on_attach,
					capabilities = capabilities,
					settings = {
						Lua = {
							diagnostics = {
								globals = { "vim" },
							},
						},
					},
				})
			elseif server == "clangd" then
				require("lspconfig")[server].setup({
					on_attach = on_attach,
					capabilities = capabilities,
					cmd = { "clangd", "--background-index", "--offset-encoding=utf-16" },
				})
			else
				require("lspconfig")[server].setup({
					on_attach = on_attach,
					capabilities = capabilities,
				})
			end
		end
	end,
}

return M
