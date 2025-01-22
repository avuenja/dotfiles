local keymap = vim.keymap

-- Keymaps for better default experience
keymap.set({ "n", "v" }, ";", "<nop>", { silent = true, desc = "Disable leader key on Normal and Visual mode" })

-- Copy all lines
keymap.set("n", "<C-a>", "<cmd>%y+<Return>", { silent = true, desc = "Copy all lines" })

-- Replace all words - better than vsc***
keymap.set("v", "<C-r>", '"hy:%s/<C-r>h//gc<left><left><left>', { desc = "Replace all words" })

-- Do not yank with x
keymap.set("n", "x", '"_x', { desc = "Do not yank with x" })

-- Maintain the cursor position when yanking a visual selection
-- http://ddrscott.github.io/blog/2016/yank-without-jank/
keymap.set("v", "y", "myy`y", { desc = "Yanking without Jank" })
keymap.set("v", "Y", "myY`y", { desc = "Yanking without Jank" })

-- Clear hlsearch
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear hlsearch" })

-- TIP: Disable arrow keys in normal mode
keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>', { desc = "TIP: Disable arrows keys" })
keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>', { desc = "TIP: Disable arrows keys" })
keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>', { desc = "TIP: Disable arrows keys" })
keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>', { desc = "TIP: Disable arrows keys" })

-- Disable keymaps
keymap.set("n", "q:", "<nop>", { desc = "Disabled" })
keymap.set("n", "Q", "<nop>", { desc = "Disabled" })

-- Diagnostic keymaps
keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Toggle Floatermial
keymap.set("n", "<leader>tt", "<cmd>Floaterminal<CR>", { desc = "[T]oggle Float [T]erminal" })
