vim.api.nvim_set_keymap("n", "<space>", "<nop>", { noremap = true, silent = true, desc = "" })
vim.api.nvim_set_keymap("v", "<space>", "<nop>", { noremap = true, silent = true, desc = "" })

vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true, silent = true, desc = "" })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true, silent = true, desc = "" })

vim.api.nvim_set_keymap("v", "p", "_dP", { noremap = true, silent = true, desc = "" })

vim.api.nvim_set_keymap("v", "p", "'pgv\"'.v:register.'y'", { noremap = true, silent = true, expr = true, desc = "" })

vim.api.nvim_set_keymap("n", "<S-h>", "<cmd>:bprevious<cr>", { noremap = true, silent = true, desc = "" })
vim.api.nvim_set_keymap("n", "<S-l>", "<cmd>:bnext<cr>", { noremap = true, silent = true, desc = "" })
