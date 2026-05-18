return {
	"mason-org/mason.nvim",
	lazy = false,
	dependencies = {
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		"mason-org/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"ts_ls",
				"vuels",
				"angularls",
				"html",
				"cssls",
				"lua_ls",
				"ty",
				"gopls",
				"dockerls",
				"bashls",
				"jsonls",
				"yamlls",
				"terraformls",
			},
		})

		require("mason-tool-installer").setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"black",
				"eslint_d",
				"flake8",
				"autoflake",
				"isort",
				"golangci-lint",
				"goimports",
				"yamllint",
				"markdownlint",
				"ansible-lint",
				"htmlhint",
				"jsonlint",
				"tflint",
				"hadolint",
				"shellcheck",
			},
		})
	end,
}
