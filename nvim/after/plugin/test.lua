-- Coverage Load
local status, coverage = pcall(require, "coverage")
if not status then
	return
end

coverage.setup({
	load_coverage_cb = function(ftype)
		vim.notify("Loaded " .. ftype .. " coverage")
	end,
})

-- Keymaps
vim.keymap.set("n", "<Leader>tl", ":CoverageLoad<CR>", { silent = true })
vim.keymap.set("n", "<Leader>tt", ":CoverageToggle<CR>", { silent = true })
vim.keymap.set("n", "<Leader>ts", ":CoverageSummary<CR>", { silent = true })

-- Jest
local status, jest = pcall(require, "nvim-jest")
if not status then
	return
end

jest.setup()

-- Keymaps
vim.keymap.set("n", "<Leader>tr", ":Jest<CR>", { silent = true })
vim.keymap.set("n", "<Leader>tf", ":JestFile<CR>", { silent = true })
vim.keymap.set("n", "<Leader>tc", ":JestCoverage<CR>", { silent = true })
