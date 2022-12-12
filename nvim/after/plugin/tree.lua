local status, tree = pcall(require, "nvim-tree")
if not status then
	return
end

local nnoremap = require("avuenja.keymap").nnoremap

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

tree.setup({
	hijack_directories = {
		auto_open = false, -- Disable open auto
	},
})

-- Keymaps
nnoremap(";x", ":NvimTreeToggle<CR>", { silent = true })
