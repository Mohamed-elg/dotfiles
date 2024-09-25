return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "projekt0n/github-nvim-theme" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "github_dark_dimmed",
				blend = true,
			},
		})
	end,
}
