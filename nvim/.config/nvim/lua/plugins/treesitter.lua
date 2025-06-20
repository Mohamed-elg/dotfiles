return {
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = {
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
			},
			auto_install = true,
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
			sync_install = false,
			additional_vim_regex_highlighting = false,
			highlight = { enable = true },
			indent = { enable = true },
			autotag = {
				enable = true,
			},
		})
	end,
}
