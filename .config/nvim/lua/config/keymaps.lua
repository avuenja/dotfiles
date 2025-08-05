local keymap = vim.keymap.set

-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal mode --

-- Navegation
keymap("n", "j", "gj")
keymap("n", "k", "gk")

-- Centralize cursor
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

-- Window management
keymap("n", "<leader>sv", "<C-w>v", { desc = "[S]plit [V]ertically Window" }) -- Split vertically
keymap("n", "<leader>sh", "<C-w>s", { desc = "[S]plit [H]orizontally Window" }) -- Split horizontally
keymap("n", "<leader>se", "<C-w>=", { desc = "[S]plit [E]qualize Window" }) -- Equalize
keymap("n", "<leader>sx", ":close<CR>", { desc = "[S]plit [X]close Window" }) -- Close split

-- Window navigation
keymap("n", "<C-h>", "<C-w>h")
keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-k>", "<C-w>k")
keymap("n", "<C-l>", "<C-w>l")

-- Window resizing
keymap("n", "<C-Up>", ":resize +2<CR>")
keymap("n", "<C-Down>", ":resize -2<CR>")
keymap("n", "<C-Left>", ":vertical resize -2<CR>")
keymap("n", "<C-Right>", ":vertical resize +2<CR>")

-- Buffer navigation
keymap("n", "<S-l>", ":bnext<CR>", { desc = "Next buffer" })
keymap("n", "<S-h>", ":bprevious<CR>", { desc = "Previous buffer" })
keymap("n", "<leader>bx", ":bdelete<CR>", { desc = "[B]uffer [X]delete" })

-- Utilities
keymap("n", "x", '"_x') -- Delete without yanking
keymap("n", "<C-a>", "gg<S-v>G") -- Select all
keymap("n", "<leader>nh", ":nohlsearch<CR>", { desc = "Clear [N]o[H]lsearch" }) -- Clear search highlights

-- Visual mode --

-- Move selected lines
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

-- Keep selection after indenting
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

-- Replace all occurrences of the selected text
keymap("v", "<leader>r", '"hy:%s/<C-r>h//gc<Left><Left><Left>')

-- Insert mode --

-- Exit insert mode with 'jk'
keymap("i", "jk", "<ESC>")
