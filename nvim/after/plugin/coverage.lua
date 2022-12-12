local status, coverage = pcall(require, "coverage")
if not status then
	return
end

local nnoremap = require("avuenja.keymap").nnoremap

coverage.setup({
	load_coverage_cb = function(ftype)
		vim.notify("Loaded " .. ftype .. " coverage")
	end,
})

-- Keymaps
nnoremap("<Leader>tl", ":CoverageLoad<CR>", { silent = true })
nnoremap("<Leader>tt", ":CoverageToggle<CR>", { silent = true })
nnoremap("<Leader>ts", ":CoverageSummary<CR>", { silent = true })
