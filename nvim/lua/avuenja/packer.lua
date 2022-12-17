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

	-- LSP
	use("neovim/nvim-lspconfig")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("j-hui/fidget.nvim")

	-- Autocompletion & Snippet
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")

	-- Treesitter (Highlight, edit, and navigate code)
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use("nvim-treesitter/nvim-treesitter-context")
	use("nvim-treesitter/nvim-treesitter-textobjects")

	-- Colorscheme
	use("rebelot/kanagawa.nvim")

	-- Icons
	use("kyazdani42/nvim-web-devicons")

	-- Statusline
	use("nvim-lualine/lualine.nvim")

	-- Telescope (Fuzzy Finder - files, lsp, etc)
	use("nvim-lua/plenary.nvim")
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })
	use("nvim-telescope/telescope-file-browser.nvim")

	-- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make", cond = vim.fn.executable("make") == 1 })

	-- Git
	use("lewis6991/gitsigns.nvim")
	use({ "akinsho/git-conflict.nvim", tag = "*" })

	-- Indent Blankline
	use("lukas-reineke/indent-blankline.nvim")

	-- "gc" to comment visual regions/lines
	use("numToStr/Comment.nvim")

	-- Dart/Flutter
	use("dart-lang/dart-vim-plugin")
	use("akinsho/flutter-tools.nvim")

	-- \/ Verify these plugins \/
	-- Autotag & Autopairs
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

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
	-- /\ Verify these plugins /\

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
