return {
	"crnvl96/lazydocker.nvim",
	event = "VeryLazy",
	opts = {}, -- automatically calls `require("lazydocker").setup()`
	dependencies = {
		"MunifTanjim/nui.nvim",
	},

	vim.keymap.set(
		"n",
		"<leader>ld",
		"<cmd>LazyDocker<CR>",
		{ desc = "Docker", noremap = true, silent = true }
	),
}
