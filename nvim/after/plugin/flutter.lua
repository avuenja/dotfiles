local status, flutter = pcall(require, "flutter-tools")
if not status then
	return
end

local status_telescope, telescope = pcall(require, "telescope")
if not status_telescope then
	return
end

local nnoremap = require("avuenja.keymap").nnoremap

flutter.setup({
	decorations = {
		statusline = {
			app_version = true,
			device = true,
		},
	},
})

-- Telescope integration
telescope.load_extension("flutter")

-- Keymaps
nnoremap(";c", function()
	telescope.extensions.flutter.commands()
end)
