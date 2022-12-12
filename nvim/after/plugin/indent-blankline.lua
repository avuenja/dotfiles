local status, indent_blankline = pcall(require, "indent_blankline")
if not status then
	return
end

indent_blankline.setup({
	filetype_exclude = {
		"help",
		"terminal",
		"dashboard",
		"packer",
		"lspinfo",
		"TelescopePrompt",
		"TelescopeResults",
	},
	buftype_exclude = {
		"terminal",
		"NvimTree",
	},
	show_trailing_blankline_indent = false,
	show_first_indent_level = true,
})
