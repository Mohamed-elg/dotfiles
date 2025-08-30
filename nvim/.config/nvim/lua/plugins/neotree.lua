return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons", -- optional, but recommended
	},
	lazy = false, -- neo-tree will lazily load itself
	config = function()
		require("neo-tree").setup({
			window = {
				position = "float",
				popup = {
					size = {
						-- height = "17",
						width = "50",
					},
					position = "50%",
				},
			},
			popup_border_style = "rounded",
			filesystem = { filtered_items = { hide_dotfiles = false, hide_gitignored = false } },

			vim.api.nvim_set_keymap(
				"n",
				"<leader>e",
				":Neotree toggle<cr>",
				{ noremap = true, desc = "Toggle File explorer" }
			),
		})
	end,
}
