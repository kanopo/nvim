-- Highlight yanked text
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
	callback = function()
		vim.highlight.on_yank({ higroup = "Visual", timeout = 40 })
	end,
})

-- Use internal formatting for bindings like gq.
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		vim.bo[args.buf].formatexpr = nil
	end,
})

-- jump to last position when opening a file
vim.api.nvim_create_autocmd({ "BufReadPost" }, {
	callback = function()
		vim.cmd([[
      if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    ]])
	end,
})
