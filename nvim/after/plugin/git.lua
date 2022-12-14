-- Git Signs
local status, gitsigns = pcall(require, "gitsigns")
if not status then
	return
end

gitsigns.setup({
	numhl = true,
	current_line_blame = true,
	current_line_blame_formatter = "<author>, <author_time:%d-%m-%Y> - <summary>",
})

-- Git Conflict
local status, gitconflict = pcall(require, "git-conflict")
if not status then
	return
end

gitconflict.setup()
