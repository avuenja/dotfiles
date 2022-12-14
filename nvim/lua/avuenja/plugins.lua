local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Colorscheme
	use("rebelot/kanagawa.nvim")

	-- Icons
	use("kyazdani42/nvim-web-devicons")

	-- LSP
	use("neovim/nvim-lspconfig")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("j-hui/fidget.nvim")

	-- Autocompletion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer") -- verify

	-- Snippet [Autocompletion]
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")

	-- Pictograms [Autocompletion]
	use("onsails/lspkind.nvim") -- verify

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use("nvim-treesitter/nvim-treesitter-context")

	-- Statusline
	use("nvim-lualine/lualine.nvim")

	-- Telescope
	use("nvim-lua/plenary.nvim")
	use("nvim-telescope/telescope.nvim")
	use("nvim-telescope/telescope-file-browser.nvim")

	-- Git
	use("lewis6991/gitsigns.nvim")
	use({ "akinsho/git-conflict.nvim", tag = "*" })

	-- Indent Blankline
	use("lukas-reineke/indent-blankline.nvim")

	-- Autotag & Autopairs
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	-- "gc" to comment visual regions/lines
	use("numToStr/Comment.nvim")

	-- Dart/Flutter
	use("dart-lang/dart-vim-plugin")
	use("akinsho/flutter-tools.nvim")

	-- Editorconfig
	use("editorconfig/editorconfig-vim")

	-- Formatting
	use("jose-elias-alvarez/null-ls.nvim")

	-- Colorizer
	use("norcalli/nvim-colorizer.lua")

	-- Markdown Viewer
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})

	-- Jest Test
	use("andythigpen/nvim-coverage")
	use("mattkubej/jest.nvim")

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
