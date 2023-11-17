-- numeri di linea
vim.opt.number = true  -- Mostra i numeri di riga
vim.opt.relativenumber = true  -- Usa numeri di riga relativi


-- indentazione
vim.opt.expandtab = true  -- Converte i tab in spazi
vim.opt.shiftwidth = 4  -- Indentazione di 4 spazi
vim.opt.tabstop = 4  -- Un tab è considerato di 4 spazi
vim.opt.smartindent = true  -- Indentazione intelligente


-- ricerca
vim.opt.ignorecase = true  -- Ignora maiuscole/minuscole in ricerca
vim.opt.smartcase = true  -- Utilizza il case-sensitive se la ricerca contiene maiuscole
vim.opt.incsearch = true  -- Ricerca incrementale
vim.opt.hlsearch = true  -- Evidenzia tutte le corrispondenze di ricerca


-- wrap
vim.opt.wrap = false  -- Disabilita il wrapping di testo
vim.opt.scrolloff = 8  -- Inizia a scorrere quando ci si avvicina ai bordi dello schermo
vim.opt.sidescrolloff = 8  -- Stessa cosa per lo scorrimento laterale
vim.opt.textwidth = 80  -- Imposta la larghezza massima del testo (buona per LaTeX)


-- colore
vim.opt.termguicolors = true  -- Abilita i colori RGB in terminali compatibili
vim.opt.cursorline = true  -- Evidenzia la linea del cursore


-- backup 
vim.opt.backup = false  -- Disabilita file di backup
vim.opt.swapfile = false  -- Disabilita file di swap
vim.opt.undofile = true  -- Abilita file di undo persistente
vim.opt.history = 1000  -- Aumenta il numero di comandi memorizzati nella storia


-- generali
vim.opt.clipboard = "unnamedplus"  -- Usa il clipboard di sistema
vim.opt.mouse = "a"  -- Abilita il supporto al mouse in tutti i modi
vim.opt.showmode = false  -- Non mostrare la modalità corrente (es. -- INSERT --)
vim.opt.conceallevel = 0  -- Mostra tutti i caratteri nascosti in LaTeX


-- split
vim.opt.splitright = true  -- Apri nuovi split verticali a destra
vim.opt.splitbelow = true  -- Apri nuovi split orizzontali in basso


-- spell
vim.opt.spell = true  -- Abilita il controllo ortografico
vim.opt.spelllang = { 'en', 'it' }  -- Imposta le lingue per il controllo ortografico



-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "
