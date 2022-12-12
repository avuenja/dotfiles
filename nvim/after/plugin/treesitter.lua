local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

treesitter.setup({
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
	sync_install = true,
	ensure_installed = {
		"tsx",
		"astro",
		"toml",
		"fish",
		"php",
		"json",
		"yaml",
		"css",
		"html",
		"lua",
		"rust",
		"sql",
		"python",
		"prisma",
	},
	autotag = {
		enable = true,
	},
})
