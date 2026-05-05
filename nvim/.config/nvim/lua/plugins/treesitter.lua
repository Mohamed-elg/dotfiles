return {
	"https://github.com/arborist-ts/arborist.nvim",
	config = function()
		local ensure_installed = {
			"python",
			"lua",
			"vim",
			"vimdoc",
			"javascript",
			"html",
			"typescript",
			"bash",
			"go",
			"dockerfile",
			"gitignore",
			"css",
			"yaml",
			"markdown",
			"markdown_inline",
			"vue",
			"json",
			"terraform",
			"hcl",
		}
		require("arborist").setup({
			ensure_installed = ensure_installed,
			update_cadence = "weekly"
		})
	end,
}
