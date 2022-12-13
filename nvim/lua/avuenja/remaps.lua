local anoremap = require("avuenja.keymap").anoremap
local nnoremap = require("avuenja.keymap").nnoremap
local vnoremap = require("avuenja.keymap").vnoremap
local inoremap = require("avuenja.keymap").inoremap

vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Do not yank with x
nnoremap("x", '"_x')

-- Increment/decrement
nnoremap("+", "<C-a>")
nnoremap("-", "<C-x>")

-- Split window
nnoremap("ss", ":split<Return>", { silent = true })
nnoremap("sv", ":vsplit<Return>", { silent = true })

-- Copy all lines
nnoremap("<Leader>ca", ":%y+<Return>", { silent = true })

-- Show diagnostic (TJ helps me)
nnoremap("<Leader>ms", "<cmd>lua vim.diagnostic.open_float()<CR>", { silent = true }) -- Open message error
nnoremap("<Leader>mp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", { silent = true }) -- Previous message error
nnoremap("<Leader>mn", "<cmd>lua vim.diagnostic.goto_next()<CR>", { silent = true }) -- Next message error

-- Replace all words - better than vsc***
vnoremap("<C-r>", '"hy:%s/<C-r>h//gc<left><left><left>')

-- Update current file
nnoremap("<Leader>so", ":so %<CR>")

-- Open current folder
anoremap("<Leader>f", ":!open .<CR><CR>")

-- Open Simulator
nnoremap("<Leader>s", ":!open -a Simulator <CR><CR>", { silent = true })

-- ThePrimeagen tips
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")
nnoremap("n", "nzzzv")
nnoremap("N", "Nzzzv")

-- Move between windows
anoremap("sh", "<C-w>h")
anoremap("sk", "<C-w>k")
anoremap("sj", "<C-w>j")
anoremap("sl", "<C-w>l")

anoremap("s<left>", "<C-w>h")
anoremap("s<up>", "<C-w>k")
anoremap("s<down>", "<C-w>j")
anoremap("s<right>", "<C-w>")

-- Resize current window
nnoremap("<C-w><left>", "<C-w><")
nnoremap("<C-w><right>", "<C-w>>")
nnoremap("<C-w><up>", "<C-w>+")
nnoremap("<C-w><down>", "<C-w>-")

-- Easy insertion of a trailing ; or , from insert mode
inoremap(";;", "<Esc>A;<Esc>")
inoremap(",,", "<Esc>A,<Esc>")

-- Disable annoying command line thing
nnoremap("q:", ":q<CR>")

-- Maintain the cursor position when yanking a visual selection
-- http://ddrscott.github.io/blog/2016/yank-without-jank/
vnoremap("y", "myy`y")
vnoremap("Y", "myY`y")
