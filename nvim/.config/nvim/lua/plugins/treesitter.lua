return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local treesitter = require("nvim-treesitter")

		local ensure_installed = {
			"json",
			"javascript",
			"typescript",
			"go",
			"yaml",
			"toml",
			"html",
			"css",
			"python",
			"http",
			"bash",
			"zsh",
			"lua",
			"vim",
			"dockerfile",
			"gitignore",
			"query",
			"vimdoc",
		}

		treesitter.install(ensure_installed)

		-- Safe FileType autocmd for highlighting + indentation
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "*",
			callback = function(args)
				local buf = args.buf
				local ft = vim.bo[buf].filetype

				local lang = vim.treesitter.language.get_lang(ft)
				if not lang then
					return
				end

				-- start treesitter safely
				pcall(vim.treesitter.start, buf, lang)

				-- enable indentation (skip yaml/markdown)
				if ft ~= "yaml" and ft ~= "markdown" then
					vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
					vim.bo[buf].smartindent = false
					vim.bo[buf].cindent = false
				end
			end,
		})
	end,
}
