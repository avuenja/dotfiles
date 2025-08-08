local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"
opt.wrap = false
opt.scrolloff = 8
opt.sidescrolloff = 8

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

opt.backup = false
opt.writebackup = false
opt.swapfile = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.updatetime = 50
opt.timeoutlen = 300

opt.termguicolors = true
opt.cursorline = true
opt.colorcolumn = "80"

opt.splitbelow = true
opt.splitright = true

opt.mouse = "a"
opt.clipboard = "unnamedplus"

opt.completeopt = { "menuone", "noselect" }

opt.list = true
opt.listchars = { tab = "| ", trail = "·", nbsp = "␣" }
opt.fillchars:append({ eob = " " })
-- set.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

opt.showmode = false
-- opt.laststatus = 3
