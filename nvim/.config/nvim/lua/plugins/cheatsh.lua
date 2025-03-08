return {
	"RishabhRD/nvim-cheat.sh",
	dependencies = { "RishabhRD/popfix" },
	config = function()
		vim.api.nvim_set_keymap("n", "<leader>cc", "<cmd>Cheat<CR>", { noremap = true, desc = "Cheatsh" })
	end,
}
