-- Leader key for all the keymaps
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- General settings
vim.opt.clipboard = "unnamedplus" -- Use system clipboard
-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true
-- don't show the mode
vim.opt.showmode = false
-- -- break indent 
-- vim.opt.breakindent = true
--
--
--
--
-- -- save undo history
-- vim.opt.undofile = true
--
--
--
-- Case INSENSITIVE search uncless using capital
vim.opt.ignorecase = true
vim.opt.smartcase = true
--
-- keep sign column on by default
vim.opt.signcolumn = 'yes'
--
-- reduced update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
--
-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true
--
--
-- -- write in clear the spacing
-- -- vim.opt.list = true
-- -- vim.opt.listchars = {
-- -- 	trail = "·"
-- -- }
--
-- Show which line your cursor is on
vim.opt.cursorline = true
--
--
--
-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10


vim.termguicolor = true -- True color support
-- -- old config stuff
-- -- TODO: order all the config in a semantic way
-- vim.opt.conceallevel = 3 -- Make `` visible in markdown files
-- vim.opt.fileencoding = "utf-8" -- Encoding written to file
-- vim.opt.hlsearch = true -- Highlight all matches on previous search
-- vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
-- vim.opt.termguicolors = true -- True color support
-- vim.opt.undofile = true -- Enable persistent undo
--
-- vim.opt.numberwidth = 4 -- Set number column width to 2 {default 4}
-- vim.opt.wrap = false -- Display long lines as just one line
--
--
--
--
--
-- Tabs, indent
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.shiftwidth = 4 -- Shift 4 spaces when tab
vim.opt.tabstop = 4 -- 1 tab == 4 spaces
vim.opt.smarttab = true -- Makes tabbing smarter
--
-- vim.opt.showtabline = 1
--
--
-- -- lang spell cheecking for italian and english
-- vim.opt.spell = true
-- vim.opt.spelllang = "en,it"
