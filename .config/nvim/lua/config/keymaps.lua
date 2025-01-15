local keymap = vim.keymap

-- Keymaps for better default experience
keymap.set({ "n", "v" }, ";", "<nop>", { silent = true, desc = "Disable leader key on Normal and Visual mode" })

-- Copy all lines
keymap.set("n", "<C-a>", "<cmd>%y+<Return>", { silent = true, desc = "Copy all lines" })

-- Replace all words - better than vsc***
keymap.set("v", "<C-r>", '"hy:%s/<C-r>h//gc<left><left><left>', { desc = "Replace all words" })

-- Do not yank with x
keymap.set("n", "x", '"_x')

-- Maintain the cursor position when yanking a visual selection
-- http://ddrscott.github.io/blog/2016/yank-without-jank/
keymap.set("v", "y", "myy`y")
keymap.set("v", "Y", "myY`y")

-- Clear hlsearch
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- TIP: Disable arrow keys in normal mode
keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Split window
keymap.set("n", "<leader>wh", "<cmd>split<Return>", { silent = true })
keymap.set("n", "<leader>wv", "<cmd>vsplit<Return>", { silent = true })

-- Format code
keymap.set('n', '<leader>fc', vim.lsp.buf.format, { desc = 'Format all code' })

-- Disable keymaps
keymap.set("n", "q:", "<nop>")
keymap.set("n", "Q", "<nop>")

-- Open Floaterminal
keymap.set("n", "<leader>tt", "<cmd>Floaterminal<CR>")
