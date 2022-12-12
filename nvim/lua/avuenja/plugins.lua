local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Colorscheme
	use("rebelot/kanagawa.nvim")

	-- Icons
	use("kyazdani42/nvim-web-devicons")

	-- Statusline
	use("nvim-lualine/lualine.nvim")

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use("nvim-treesitter/nvim-treesitter-context")

	-- Telescope
	use("nvim-lua/plenary.nvim")
	use("nvim-telescope/telescope.nvim")
	use("nvim-telescope/telescope-file-browser.nvim")

	-- Autotag & Autopairs
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	-- LSP
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig")

	-- Completion
	-- nvim-cmp source for neovim's built-in LSP
	-- nvim-cmp source for buffer words
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/nvim-cmp")

	-- Snippet
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")

	-- Pictograms on CMP
	use("onsails/lspkind.nvim")

	-- Dart/Flutter
	use("dart-lang/dart-vim-plugin")
	use("akinsho/flutter-tools.nvim")

	-- Git
	use("lewis6991/gitsigns.nvim")
	use("APZelos/blamer.nvim")
	use({ "akinsho/git-conflict.nvim", tag = "*" })

	-- Editorconfig
	use("editorconfig/editorconfig-vim")

	-- Formatting
	use("jose-elias-alvarez/null-ls.nvim")

	-- Colorizer
	use("norcalli/nvim-colorizer.lua")

	-- Indent Blankline
	use("lukas-reineke/indent-blankline.nvim")

	-- Markdown Viewer
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})

	-- Jest Test
	use("andythigpen/nvim-coverage")
	use("/Users/avuenja/Developer/neovim.plugins/jest.nvim")

	-- Nvim Tree
	use("nvim-tree/nvim-tree.lua")
end)
