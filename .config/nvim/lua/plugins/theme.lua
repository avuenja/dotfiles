return {
	{
		dir = "~/Developer/shizukana.nvim",
		name = "shizukana",
		lazy = false,
		priority = 1000,
		opts = {
			-- Options for the colorscheme can be set here
			style = "moon", -- moon, dawn, dusk
			transparent = false,
			terminal_colors = true,

			dim_inactive = {
				enabled = true,
				shade = "dark",
				percentage = 0.12,
			},

			styles = {
				comments = { italic = true },
				keywords = { bold = true },
				functions = {},
				variables = {},
				operators = {},
				conditionals = { italic = true },
			},

			plugins = {
				auto_detect = true,
				telescope = true,
				nvim_tree = true,
				lualine = true,
				treesitter = true,
				lsp = true,
				cmp = true,
				gitsigns = true,
				indent_blankline = true,
			},
		},
		config = function(_, opts)
			-- Load the shizukana colorscheme with the provided options
			require("shizukana").setup(opts)

			-- Set the colorscheme
			vim.cmd.colorscheme("shizukana")
		end,
	},
}
