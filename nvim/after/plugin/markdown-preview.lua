local nnoremap = require("avuenja.keymap").nnoremap

-- Keymaps
nnoremap(";mp", ":MarkdownPreview<Return>", { silent = true })
