return {
	{
		dir = "~/Developer/shizukana.nvim",
		name = "shizukana.nvim",
		priority = 1000,
		lazy = false,
		opts = {},
		init = function()
			vim.o.background = "dark"
			vim.cmd.colorscheme("shizukana")
		end,
		config = function(_, opts)
			-- Development setup
			vim.api.nvim_create_autocmd("BufWritePost", {
				pattern = "*/shizukana.nvim/**/*.lua",
				callback = function()
					-- Clear module cache
					for module, _ in pairs(package.loaded) do
						if module:match("^shizukana") then
							package.loaded[module] = nil
						end
					end

					-- Reload theme
					require("shizukana").setup()
					vim.notify("🌸 Shizukana reloaded!", vim.log.levels.INFO)
				end,
			})

			-- Load the theme
			require("shizukana").setup(opts)

			-- Set background and colorscheme
			vim.o.background = "dark"
			vim.cmd.colorscheme("shizukana")
		end,
	},
	{
		dir = "~/Developer/yukado.nvim",
		name = "yukado.nvim",
		priority = 1000,
		lazy = false,
		opts = {},
		enabled = false,
		config = function(_, opts)
			-- Development setup
			vim.api.nvim_create_autocmd("BufWritePost", {
				pattern = "*/yukado.nvim/**/*.lua",
				callback = function()
					-- Clear module cache
					for module, _ in pairs(package.loaded) do
						if module:match("^shizukana") then
							package.loaded[module] = nil
						end
					end

					-- Reload theme
					require("yukado").setup()
					vim.notify("🏮 yukado.nvim reloaded!", vim.log.levels.INFO)
				end,
			})

			-- Load the theme
			require("yukado").setup(opts)

			-- Set background and colorscheme
			vim.o.background = "dark"
			vim.cmd.colorscheme("yukado")
		end,
	},
}
