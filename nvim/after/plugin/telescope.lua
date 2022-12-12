local status, telescope = pcall(require, "telescope")
if not status then
	return
end

local actions = require("telescope.actions")
local builtin = require("telescope.builtin")

local nnoremap = require("avuenja.keymap").nnoremap

local function telescope_buffer_dir()
	return vim.fn.expand("%:p:h")
end

local fb_actions = require("telescope").extensions.file_browser.actions

telescope.setup({
	defaults = {
		mappings = {
			n = {
				["q"] = actions.close,
			},
		},
	},
	extensions = {
		file_browser = {
			theme = "dropdown",
			-- disables netrw and use telescope-file-browser in its place
			hijack_netrw = true,
			respect_gitignore = false,
			hidden = true,
			grouped = true,
			previewer = false,
			mappings = {
				-- your custom insert mode mappings
				["i"] = {
					["<C-w>"] = function()
						vim.cmd("normal vbd")
					end,
				},
				["n"] = {
					-- your custom normal mode mappings
					["N"] = fb_actions.create,
					["h"] = fb_actions.goto_parent_dir,
					["/"] = function()
						vim.cmd("startinsert")
					end,
				},
			},
		},
	},
})

telescope.load_extension("file_browser")

-- Keymaps
nnoremap(";f", function()
	builtin.find_files()
end)
nnoremap(";F", function()
	builtin.find_files({
		no_ignore = true,
		prompt_title = "All Files",
	})
end)
nnoremap(";r", function()
	builtin.live_grep()
end)
nnoremap(";b", function()
	builtin.buffers()
end)
nnoremap(";t", function()
	builtin.help_tags()
end)
nnoremap(";h", function()
	builtin.oldfiles()
end)
nnoremap(";;", function()
	builtin.resume()
end)
nnoremap(";e", function()
	builtin.diagnostics()
end)
nnoremap(";g", function()
	builtin.git_commits()
end)
nnoremap(";s", function()
	builtin.lsp_document_symbols()
end)

nnoremap("sf", function()
	telescope.extensions.file_browser.file_browser({
		path = "%:p:h",
		cwd = telescope_buffer_dir(),
		respect_gitignore = false,
		hidden = true,
		grouped = true,
		previewer = false,
		initial_mode = "normal",
		layout_config = { height = 40 },
	})
end)
