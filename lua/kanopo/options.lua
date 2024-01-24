-- init.lua or a part of your Neovim configuration
-- General settings
vim.opt.backup = false                   -- Don't create backup files
vim.opt.clipboard = "unnamedplus"        -- Use system clipboard
vim.opt.cmdheight = 1                    -- Height of the command bar
vim.opt.completeopt = "menuone,noselect" -- Completion options (for nvim-cmp)
vim.opt.conceallevel = 0                 -- Make `` visible in markdown files
vim.opt.fileencoding = "utf-8"           -- Encoding written to file
vim.opt.hlsearch = true                  -- Highlight all matches on previous search
vim.opt.ignorecase = true                -- Ignore case in search patterns
vim.opt.mouse = "a"                      -- Enable mouse in all modes
vim.opt.showmode = false                 -- Don't show mode since we have a statusline
vim.opt.smartcase = true                 -- Smart case
vim.opt.smartindent = true               -- Smart indent
vim.opt.splitbelow = true                -- Horizontal splits will automatically be below
vim.opt.splitright = true                -- Vertical splits will automatically be to the right
vim.opt.termguicolors = true             -- True color support
vim.opt.timeoutlen = 1000                -- Time in ms to wait for a mapped sequence to complete
vim.opt.undofile = true                  -- Enable persistent undo
vim.opt.updatetime = 300                 -- Faster completion (4000ms default)
vim.opt.writebackup = false              -- Don't create a backup file

-- UI settings
vim.opt.cursorline = true     -- Highlight the current line
vim.opt.number = true         -- Set numbered lines
vim.opt.relativenumber = true -- Set relative numbered lines
vim.opt.numberwidth = 4       -- Set number column width to 2 {default 4}
vim.opt.signcolumn = "yes"    -- Always show the sign column
vim.opt.wrap = false          -- Display long lines as just one line

-- Tabs, indent
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.shiftwidth = 4   -- Shift 4 spaces when tab
vim.opt.tabstop = 4      -- 1 tab == 4 spaces
vim.opt.smarttab = true  -- Makes tabbing smarter

-- Search
vim.opt.incsearch = true -- Incremental search
vim.opt.showmatch = true -- Show matching brackets when text indicator is over them

-- For backup and swap files, it's better to place them in a different directory,
-- to avoid clutter. Here is an example:
-- vim.opt.backupdir = "~/.config/nvim/backup//"
-- vim.opt.directory = "~/.config/nvim/swap//"


-- Leader key for all the keymaps
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
