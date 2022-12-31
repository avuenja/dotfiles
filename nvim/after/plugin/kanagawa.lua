local status, kanagawa = pcall(require, "kanagawa")
if not status then
	return
end

kanagawa.setup({
	transparent = true,
	--dimInactive = true,
	--globalStatus = true,
})

vim.cmd([[colorscheme kanagawa]])
