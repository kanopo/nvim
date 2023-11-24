-- Leader Key Configuration
-- Remap space as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Line Numbers
-- Display line numbers
vim.opt.number = true
-- Use relative line numbers
vim.opt.relativenumber = true

-- Indentation Settings
-- Convert tabs to spaces
vim.opt.expandtab = true
-- Set the number of spaces for indentation
vim.opt.shiftwidth = 2
-- Consider a tab as equal to 4 spaces
vim.opt.tabstop = 2
-- Enable intelligent indentation
vim.opt.smartindent = true

-- Search Configuration
-- Ignore case in search patterns
vim.opt.ignorecase = true
-- Use case-sensitive search if the search pattern contains upper case characters
vim.opt.smartcase = true
-- Enable incremental search
vim.opt.incsearch = true
-- Highlight all search pattern matches
vim.opt.hlsearch = true

-- Text Wrapping and Scrolling
-- Disable text wrapping
vim.opt.wrap = false
-- Start scrolling when getting close to the screen edges
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
-- Set maximum text width, useful for LaTeX
vim.opt.textwidth = 90

-- Color and Highlighting
-- Enable RGB colors in compatible terminals
vim.opt.termguicolors = true
-- Highlight the line of the cursor
vim.opt.cursorline = true
-- column for indentation
vim.opt.colorcolumn = '90'

-- Backup and Undo Files
-- Disable backup file creation
vim.opt.backup = false
-- Disable swap file creation
vim.opt.swapfile = false
-- Enable persistent undo
vim.opt.undofile = true
-- Increase the number of commands stored in history
vim.opt.history = 1000

-- General Settings
-- Use the system clipboard
vim.opt.clipboard = "unnamedplus"
-- Enable mouse support in all modes
vim.opt.mouse = "a"
-- Don't show the current mode (e.g., -- INSERT --)
vim.opt.showmode = false
-- Show all hidden characters in LaTeX
vim.opt.conceallevel = 0

-- Split Windows
-- Open new vertical splits to the right
vim.opt.splitright = true
-- Open new horizontal splits below
vim.opt.splitbelow = true

-- Spell Checking
-- Enable spell checking
vim.opt.spell = true
-- Set spell checking languages
vim.opt.spelllang = { 'en', 'it' }

-- Miscellaneous
-- Always show the sign column
vim.opt.signcolumn = "yes"


