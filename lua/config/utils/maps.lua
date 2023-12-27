local nmap = function(key, cmd, desc)
	vim.api.nvim_set_keymap("n", key, cmd, { noremap = true, silent = true, desc = desc })
end

return {
	nmap = nmap,
}
