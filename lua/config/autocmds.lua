local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})

local edit_group = vim.api.nvim_create_augroup("LastEditPosition", { clear = true })
vim.api.nvim_create_autocmd("BufReadPost", {
	command = [[if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif]],
	group = edit_group,
	pattern = "*",
})
--
-- local center_group = vim.api.nvim_create_augroup("BufferlineCenter", { clear = true })
-- vim.api.nvim_create_autocmd("BufEnter", {
-- 	command = "normal zz",
-- 	group = center_group,
-- 	pattern = "*",
-- })
--
-- local cursor_group = vim.api.nvim_create_augroup("CursorCenter", { clear = true })
-- vim.api.nvim_create_autocmd("CursorMoved", {
-- 	command = "normal zz",
-- 	group = cursor_group,
-- 	pattern = "*",
-- })
