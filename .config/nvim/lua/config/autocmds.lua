local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- General group
local general = augroup("General", { clear = true })

-- Highlight on yank
autocmd("TextYankPost", {
	group = general,
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({ timeout = 200 })
	end,
})

-- Remove trailing whitespace on save
autocmd("BufWritePre", {
	group = general,
	pattern = "*",
	command = "%s/\\s\\+$//e",
})

-- Return to last cursor position
autocmd("BufReadPost", {
	group = general,
	pattern = "*",
	callback = function()
		local last_pos = vim.fn.line("'\"")
		if last_pos > 0 and last_pos <= vim.fn.line("$") then
			vim.api.nvim_win_set_cursor(0, { last_pos, 0 })
		end
	end,
})

-- Resize splits when window is resized
autocmd("VimResized", {
	group = general,
	pattern = "*",
	command = "tabdo wincmd =",
})
