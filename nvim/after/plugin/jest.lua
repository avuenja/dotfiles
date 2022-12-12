local status, jest = pcall(require, "nvim-jest")
if not status then
	return
end

local nnoremap = require("avuenja.keymap").nnoremap

jest.setup()

-- Keymaps
nnoremap("<Leader>tr", ":Jest<CR>", { silent = true })
nnoremap("<Leader>tf", ":JestFile<CR>", { silent = true })
nnoremap("<Leader>tc", ":JestCoverage<CR>", { silent = true })
