return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				pickers = {
					live_grep = {
						hidden = true,
					},
					find_files = {
						hidden = true,
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<space>p", builtin.find_files, {})
			vim.keymap.set("n", "<space>e", builtin.live_grep, {})
			vim.keymap.set("n", "<space><space>", builtin.oldfiles, {})

			require("telescope").load_extension("ui-select")
		end,
	},
}
