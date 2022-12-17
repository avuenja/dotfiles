vim.opt.guicursor = ""

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 2

vim.opt.wrap = false -- Disable word wrap

vim.opt.autoindent = true -- Auto indent
vim.opt.smartindent = true -- Smart indent
vim.opt.showmatch = true -- Show match brackts

vim.opt.hlsearch = true -- Set highlight on search
vim.opt.ignorecase = true -- Case insensitive searching unless /C or capital in search
vim.opt.smartcase = true -- Smart case
vim.opt.incsearch = true

vim.opt.breakindent = true -- Enable break indent
vim.opt.clipboard = "unnamedplus" -- Access system clipboard

vim.opt.signcolumn = "yes" -- Always show sign column
vim.opt.updatetime = 100 -- Decrease update time
vim.opt.scrolloff = 8 -- Screen lines to keep above and below the cursor
vim.opt.sidescrolloff = 8

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.title = true -- Show title

vim.opt.mouse = "a"
vim.opt.shell = "fish" -- My shell

vim.opt.redrawtime = 10000 -- Allow more time for loading syntax on large files

vim.opt.confirm = true -- ask for confirmation instead of erroring

--vim.opt.list = true -- enable the below listchars
--vim.opt.listchars = { tab = "▸ ", trail = "·" }
vim.opt.fillchars:append({ eob = " " }) -- remove the ~ from end of buffer

-- Set completeopt to have a better completion experience
vim.opt.completeopt = "menuone,noselect"
--vim.opt.wildmode = "longest:full,full" -- complete the longest common match, and allow tabbing the results to fully complete them

-- Tab width
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smarttab = true
vim.opt.expandtab = true

-- Backups/Swap
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Encoding
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- Highlights
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.background = "dark" -- dark / light
vim.opt.spell = true

vim.opt.laststatus = 3 -- global statusline

-- Set ';' as the leader key
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])
