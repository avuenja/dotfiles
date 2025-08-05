return {
	{
		"toppair/peek.nvim",
		event = { "VeryLazy" },
		build = "deno task --quiet build:fast",
		config = function()
			require("peek").setup()
			vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
			vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})

			vim.keymap.set("n", "<leader>pmo", "<cmd>PeekOpen<CR>", { desc = "[P]review [M]arkdown [O]pen" })
			vim.keymap.set("n", "<leader>pmc", "<cmd>PeekClose<CR>", { desc = "[P]review [M]arkdown [C]lose" })
		end,
	},
}
