return {
	{
		"luisiacc/gruvbox-baby",
		priority = 1000,
		opts = {
			background_color = "dark",
		},
		config = function()
			vim.o.background = "dark" -- or "light" for light mode
			vim.cmd([[colorscheme gruvbox-baby]])
		end,
	},
	{
		"numToStr/Comment.nvim",
		keys = {
			{
				"gc",
				mode = "v",
				"<Plug>(comment_toggle_linewise_visual)",
			},
		},
		opts = {
			mappings = {
				basic = false,
				extra = false,
			},
		},
	},
	{
		"lewis6991/gitsigns.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = true,
	},
	{
		"stevearc/dressing.nvim",
		event = "VeryLazy",
		opts = {},
	},
	{
		"NeogitOrg/neogit",
		keys = {
			{ "<leader>gg", "<cmd>:Neogit<cr>", desc = "Neogit" },
		},
		dependencies = {
			"nvim-lua/plenary.nvim", -- required
			"nvim-telescope/telescope.nvim", -- optional
		},
		opts = {},
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		keys = {
			{ "<leader>fe", "<cmd>:Neotree toggle<cr>", desc = "File Explorer" },
		},
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 500
		end,
		opts = {},
	},
	{
		"NvChad/nvim-colorizer.lua",
		opts = {},
	},
	{
		"nvim-lualine/lualine.nvim",
		opts = {
			options = {
				theme = "gruvbox-baby",
			},
		},
	},
}
