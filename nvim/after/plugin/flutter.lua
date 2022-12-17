local status, flutter = pcall(require, "flutter-tools")
if not status then
	return
end

flutter.setup({
	decorations = {
		statusline = {
			app_version = true,
			device = true,
		},
	},
})

-- Dart configs
vim.g.dart_format_on_save = true
vim.g.dart_html_in_string = true
