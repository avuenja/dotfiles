local status, gitconflict = pcall(require, "git-conflict")
if not status then
	return
end

gitconflict.setup()
