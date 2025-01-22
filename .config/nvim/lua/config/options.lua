local set = vim.opt

set.guicursor = ""

set.number = true
set.relativenumber = true
set.numberwidth = 2

set.showmode = false -- Don't show the mode, since it's already in the status line
set.wrap = false -- Disable word wrap

set.autoindent = true -- Auto indent
set.smartindent = true -- Smart indent
set.showmatch = true -- Show match brackets

set.hlsearch = true -- Set highlight on search
set.ignorecase = true -- Case insensitive searching unless /C or capital in search
set.smartcase = true -- Smart case
set.incsearch = true

set.breakindent = true -- Enable break indent

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
	set.clipboard = "unnamedplus"
end)

set.signcolumn = "yes" -- Always show sign column
set.updatetime = 250 -- Decrease update time
set.timeoutlen = 300 -- Decrease mapped sequence wait time
set.scrolloff = 8 -- Screen lines to keep above and below the cursor
set.sidescrolloff = 8

set.splitbelow = true
set.splitright = true

set.redrawtime = 10000 -- Allow more time for loading syntax on large files
set.confirm = true -- ask for confirmation instead of erroring
set.mouse = "a"

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
set.list = true
set.listchars = { tab = "| ", trail = "·", nbsp = "␣" }
-- set.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
set.fillchars:append({ eob = " " }) -- remove the ~ from end of buffer

vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
vim.o.foldlevelstart = 99

set.completeopt = "menuone,noselect" -- Set completeopt to have a better completion experience

-- Tab width
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.smarttab = true
set.expandtab = true

-- Backups/Swap
set.backup = false
set.swapfile = false
set.undodir = os.getenv("HOME") .. "/.vim/undodir"
set.undofile = true

-- Encoding
set.encoding = "utf-8"
set.fileencoding = "utf-8"

-- Highlights
set.termguicolors = true
set.cursorline = true
set.background = "dark" -- dark / light
set.spell = false

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])
