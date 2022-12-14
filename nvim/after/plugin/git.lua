-- Git Signs
local status, gitsigns = pcall(require, "gitsigns")
if not status then
	return
end

gitsigns.setup({
	numhl = true,
	current_line_blame = true,
	current_line_blame_formatter = "<author>, <author_time:%d-%m-%Y> - <summary>",
	signs = {
		add = { text = "+" },
		change = { text = "~" },
		delete = { text = "_" },
		topdelete = { text = "‾" },
		changedelete = { text = "~" },
	},
})

-- Git Conflict
local status_conflict, gitconflict = pcall(require, "git-conflict")
if not status_conflict then
	return
end

gitconflict.setup()
