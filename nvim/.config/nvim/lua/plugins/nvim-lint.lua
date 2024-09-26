return {
	"mfussenegger/nvim-lint",
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			python = { "flake8" },
			yaml = { "yamllint" },
			markdown = { "markdownlint" },
			ansible = { "ansible_lint" },
			html = { "htmlhint" },
			json = { "jsonlint" },
			lua = { "luacheck" },
			docker = { "hadolint" },
			zsh = { "zsh" },
		}

		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})

		vim.keymap.set("n", "<leader>ll", function()
			lint.try_lint()
		end, { desc = "Trigger linting for current file" })
		require('lint').linters.flake8.cmd = "python"
		require('lint').linters.flake8.args = { "-m", "flake8", "-f", ".flake8" }
	end,
}
