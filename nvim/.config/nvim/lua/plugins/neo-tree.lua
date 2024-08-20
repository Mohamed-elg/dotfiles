return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("nvim-web-devicons").setup({
			default = true,
		})

		require("neo-tree").setup({
			source_selector = {
				winbar = true,
				statusline = true,
			},
			filesystem = {
				follow_current_file = true,
				hijack_netrw_behavior = "open_current",
			},
			window = {
				position = "left",
				width = 40,
			},
		})

		vim.keymap.set("n", "<space>f", ":Neotree filesystem reveal left<CR>", {})
		vim.keymap.set("n", "<space>b", ":Neotree buffers reveal left<CR>", {})
		vim.keymap.set("n", "<space>g", ":Neotree git_status<CR>", {})
	end,
}
