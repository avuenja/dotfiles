vim.api.nvim_command([[augroup autosourcing]])
vim.api.nvim_command([[autocmd!]])
vim.api.nvim_command([[autocmd BufWritePost options.lua source %]])
vim.api.nvim_command([[augroup END]])

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})
