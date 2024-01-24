-- autocmds.lua
-- This file contains various Neovim auto-commands with explanations.

-- Neovim API is required to create auto-commands
local api = vim.api

-- Remove certain format options when entering a buffer window
api.nvim_create_autocmd("BufWinEnter", {
	callback = function()
		-- Removes 'c', 'r', and 'o' from formatoptions
		-- 'c' - auto-wrap comments, 'r' - continue comments, 'o' - O command auto-comments
		vim.cmd("set formatoptions-=cro")
	end,
})

-- Custom mappings and settings for specific file types
api.nvim_create_autocmd("FileType", {
	pattern = {
		"netrw",
		"Jaq",
		"qf",
		"git",
		"help",
		"man",
		"lspinfo",
		"spectre_panel",
		"lir",
		"DressingSelect",
		"tsplayground",
		"",
	},
	callback = function()
		-- Close buffer with 'q' in these specific filetypes
		vim.cmd([[
            nnoremap <silent> <buffer> q :close<CR>
            set nobuflisted
        ]])
	end,
})

-- Automatically exit the command-line window when entered
api.nvim_create_autocmd("CmdWinEnter", {
	callback = function()
		vim.cmd("quit")
	end,
})

-- Equalize window sizes when Vim is resized
api.nvim_create_autocmd("VimResized", {
	callback = function()
		-- Adjusts window sizes equally across tabs
		vim.cmd("tabdo wincmd =")
	end,
})

-- Check for external file changes when entering a buffer window
api.nvim_create_autocmd("BufWinEnter", {
	pattern = "*",
	callback = function()
		vim.cmd("checktime")
	end,
})

-- Provide visual feedback on text yank (copy)
api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		-- Highlights yanked text
		vim.highlight.on_yank({ higroup = "Visual", timeout = 40 })
	end,
})

-- Set specific options for writing in certain file types
api.nvim_create_autocmd("FileType", {
	pattern = { "gitcommit", "markdown", "NeogitCommitMessage" },
	callback = function()
		-- Enables line wrapping and spell checking
		vim.opt_local.wrap = true
		vim.opt_local.spell = true
	end,
})

-- Disable internal formatting for files attached to LSP
api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		-- Clears the format expression for LSP buffers
		vim.bo[args.buf].formatexpr = nil
	end,
})

-- Jump to last position when opening a file
api.nvim_create_autocmd("BufReadPost", {
	callback = function()
		-- Checks if the last saved position is valid and jumps there
		vim.cmd([[
            if line("'\"") > 0 && line("'\"") <= line("$")
                | exe "normal! g'\""
                | endif
        ]])
	end,
})

-- Custom make program for LaTeX files
api.nvim_create_autocmd("FileType", {
	pattern = "tex",
	callback = function()
		-- Sets makeprg for LaTeX compilation and cleanup
		vim.opt_local.makeprg = "latexmk -pdf main.tex; latexmk -c"
	end,
})

-- This file can be included in your init.lua or other configuration file
-- using 'require' statement.
