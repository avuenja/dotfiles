return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	enabled = false,
	config = function()
		require("nvim-tree").setup({
			view = {
				width = 30,
				side = "right",
			},
			renderer = {
				highlight_git = true,
				icons = {
					show = {
						git = true,
						folder = true,
						file = true,
						folder_arrow = true,
					},
				},
			},
		})
	end,
}
