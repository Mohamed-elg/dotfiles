return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	dependencies = {
		"mason-org/mason-lspconfig.nvim",
	},
	config = function()
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason_lspconfig.setup({
			ensure_installed = {
				"ts_ls",
				"vuels",
				"angularls",
				"html",
				"cssls",
				"lua_ls",
				"pyright",
				"gopls",
				"dockerls",
				"bashls",
				"jsonls",
				"yamlls",
				"terraformls",
			},
		})

		mason_tool_installer.setup({
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
				"luacheck",
				"hadolint",
				"shellcheck",
			},
		})
	end,
}
