return {
	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
		opts = {},
		init = function()
			vim.o.background = "dark"
			vim.cmd.colorscheme("kanagawa")
		end,
	},
}
