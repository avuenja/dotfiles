-- Keymaps for better default experience
vim.keymap.set({ "n", "v" }, ";", "<nop>", { silent = true })

-- Do not yank with x
vim.keymap.set("n", "x", '"_x')

-- Increment/decrement
vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "-", "<C-x>")

-- Move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Split window
vim.keymap.set("n", "ss", ":split<Return>", { silent = true })
vim.keymap.set("n", "sv", ":vsplit<Return>", { silent = true })

-- Copy all lines
vim.keymap.set("n", "<C-a>", ":%y+<Return>", { silent = true })

-- Show diagnostic (TJ helps me)
vim.keymap.set("n", "<leader>ms", "<cmd>lua vim.diagnostic.open_float()<CR>", { silent = true }) -- Open message error
vim.keymap.set("n", "<leader>mp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", { silent = true }) -- Previous message error
vim.keymap.set("n", "<leader>mn", "<cmd>lua vim.diagnostic.goto_next()<CR>", { silent = true }) -- Next message error

-- Replace all words - better than vsc***
vim.keymap.set("v", "<C-r>", '"hy:%s/<C-r>h//gc<left><left><left>')

-- Open current folder
vim.keymap.set("n", "<leader>of", ":!open .<CR><CR>")

-- Open Simulator
vim.keymap.set("n", "<leader>os", ":!open -a Simulator <CR><CR>", { silent = true })

-- ThePrimeagen tips
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Move between windows
vim.keymap.set("n", "<Space>", "<C-w>w")
vim.keymap.set("", "sh", "<C-w>h")
vim.keymap.set("", "sk", "<C-w>k")
vim.keymap.set("", "sj", "<C-w>j")
vim.keymap.set("", "sl", "<C-w>l")

vim.keymap.set("", "s<left>", "<C-w>h")
vim.keymap.set("", "s<up>", "<C-w>k")
vim.keymap.set("", "s<down>", "<C-w>j")
vim.keymap.set("", "s<right>", "<C-w>")

-- Resize current window
vim.keymap.set("n", "<C-w><left>", "<C-w><")
vim.keymap.set("n", "<C-w><right>", "<C-w>>")
vim.keymap.set("n", "<C-w><up>", "<C-w>+")
vim.keymap.set("n", "<C-w><down>", "<C-w>-")

-- Maintain the cursor position when yanking a visual selection
-- http://ddrscott.github.io/blog/2016/yank-without-jank/
vim.keymap.set("v", "y", "myy`y")
vim.keymap.set("v", "Y", "myY`y")

-- Clear hlsearch
vim.keymap.set("n", "<leader>c", ":nohlsearch<CR>")

-- Format
vim.keymap.set("n", "<leader>F", vim.lsp.buf.format)

-- Disable keymaps
vim.keymap.set("n", "q:", "<nop>")
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "sf", "<nop>")
