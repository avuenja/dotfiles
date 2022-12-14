vim.api.nvim_command([[augroup autosourcing]])
vim.api.nvim_command([[autocmd!]])
vim.api.nvim_command([[autocmd BufWritePost options.lua source %]])
vim.api.nvim_command([[augroup END]])
