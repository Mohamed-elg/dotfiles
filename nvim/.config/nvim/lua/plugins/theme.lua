return {
	"Mohamed-elg/mirage.nvim",
	config = function()
		require("mirage").setup({})
		vim.cmd("colorscheme mirage")
	end,
}
