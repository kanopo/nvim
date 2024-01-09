-- Set the leader keys to a space character for easier access
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Display line numbers and relative line numbers for better navigation
vim.opt.number = true
vim.opt.relativenumber = true

-- Configure indentation settings for consistency in code
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

-- Use system clipboard for all yank, delete, change, and put operations
vim.o.clipboard = "unnamedplus"

-- Case insensitive searching; becomes sensitive with uppercase letters
vim.o.ignorecase = true
vim.o.smartcase = true

-- Enhance search experience
vim.o.incsearch = true
vim.o.hlsearch = false

-- Always show the sign column to avoid shifting the text
vim.wo.signcolumn = "yes"

-- Reduce delay for triggered events like swap file writing
vim.o.updatetime = 250

-- Keymap delay time
vim.o.timeoutlen = 300

-- Auto-completion settings
vim.o.completeopt = "menuone,noselect"

-- Enable true color support
vim.o.termguicolors = true

-- Disable text wrapping for better code readability
vim.o.wrap = false

-- Highlight the current line for visibility
vim.opt.cursorline = true

-- Set a maximum line length guide
vim.opt.colorcolumn = "90"

-- Disable backup, swap files for a cleaner working directory
vim.opt.backup = false
vim.opt.swapfile = false

-- Enable persistent undo and set a high history limit
vim.opt.undofile = true
vim.opt.history = 1000

-- Do not show mode (like --INSERT--) as it's typically evident
vim.opt.showmode = false

-- Set conceal level for hiding certain elements like markdown links
vim.opt.conceallevel = 3

-- Enable spell checking for English and Italian
vim.opt.spell = true
vim.opt.spelllang = { "en", "it" }

-- Hide command line when not used
vim.opt.cmdheight = 0

-- Fold settings for cleaner code viewing
vim.opt.foldcolumn = "1"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true

-- Settings recommended by nvim-tree for better file navigation
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
