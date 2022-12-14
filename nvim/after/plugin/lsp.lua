local status, nvim_lsp = pcall(require, "lspconfig")
if not status then
	return
end

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
	local function buf_set_keymap(...)
		vim.api.nvim_buf_set_keymap(bufnr, ...)
	end

	local function buf_set_option(...)
		vim.api.nvim_buf_set_option(bufnr, ...)
	end

	--Enable completion triggered by <c-x><c-o>
	buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

	-- Mappings.
	local opts = { noremap = true, silent = true }
	-- See `:help vim.lsp.*` for documentation on any of the below functions
	buf_set_keymap("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts)
	buf_set_keymap("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
	buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
	buf_set_keymap("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)

	-- formattin:
	if client.server_capabilities.documentFormattingProvider then
		vim.api.nvim_command([[augroup Format]])
		vim.api.nvim_command([[autocmd! * <buffer>]])
		vim.api.nvim_command([[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]])
		vim.api.nvim_command([[augroup END]])
	end
end

local lsp_flags = {
	-- This is the default in Nvim 0.7+
	debounce_text_changes = 150,
}

-- Set up completion using nvim_cmp with LSP source
local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

nvim_lsp.tsserver.setup({
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
	--root_dir = nvim_lsp.util.root_pattern("package.json"),
})

nvim_lsp.sumneko_lua.setup({
	on_attach = on_attach,
	flags = lsp_flags,
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = { vim.api.nvim_get_runtime_file("", true) },
				checkThirdParty = false,
			},
		},
	},
	capabilities = capabilities,
})

nvim_lsp.intelephense.setup({
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
})

nvim_lsp.rust_analyzer.setup({
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
})

nvim_lsp.tailwindcss.setup({
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
})

nvim_lsp.prismals.setup({
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
})

nvim_lsp.astro.setup({
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
})

-- fidget
local status_fidget, fidget = pcall(require, "fidget")
if not status_fidget then
	return
end

fidget.setup()
