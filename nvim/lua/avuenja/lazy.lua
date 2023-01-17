local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- LSP
	{ "neovim/nvim-lspconfig" },
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "j-hui/fidget.nvim" },

	-- Autocompletion & Snippet
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "L3MON4D3/LuaSnip" },
	{ "saadparwaiz1/cmp_luasnip" },

	-- Treesitter (highlight, edit, and navigate code)
	{ "nvim-treesitter/nvim-treesitter", build = ":tsupdate" },
	{ "nvim-treesitter/nvim-treesitter-context" },
	{ "nvim-treesitter/nvim-treesitter-textobjects" },

	-- Colorscheme
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		priority = 1000,
	},

	-- Icons
	{ "kyazdani42/nvim-web-devicons" },

	-- Statusline
	{ "nvim-lualine/lualine.nvim" },

	-- Telescope (Fuzzy Finder - files, lsp, etc)
	{ "nvim-lua/plenary.nvim" },
	{ "nvim-telescope/telescope.nvim", branch = "0.1.x" },
	{ "nvim-telescope/telescope-file-browser.nvim" },

	-- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make", cond = vim.fn.executable("make") == 1 },

	-- Git
	{ "lewis6991/gitsigns.nvim" },
	{ "akinsho/git-conflict.nvim", version = "*" },

	-- Indent Blankline
	{ "lukas-reineke/indent-blankline.nvim" },

	-- "gc" to comment visual regions/lines
	{ "numToStr/Comment.nvim", config = true },

	-- Dart/Flutter
	{ "dart-lang/dart-vim-plugin" },
	{ "akinsho/flutter-tools.nvim" },

	-- Autotag & Autopairs
	{ "windwp/nvim-autopairs" },
	{ "windwp/nvim-ts-autotag", config = true },

	-- Editorconfig
	{ "editorconfig/editorconfig-vim" },

	-- Formatting
	{ "jose-elias-alvarez/null-ls.nvim" },

	-- Colorizer
	{ "norcalli/nvim-colorizer.lua" },

	-- Markdown Viewer
	{
		"iamcco/markdown-preview.nvim",
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
		keys = { { "<leader>mp", "<cmd>MarkdownPreview<cr>", desc = "MarkdownPreview" } },
	},

	-- Jest Test
	{ "andythigpen/nvim-coverage" },
	{ "mattkubej/jest.nvim" },

	{ "ThePrimeagen/vim-be-good" },
}, {})
