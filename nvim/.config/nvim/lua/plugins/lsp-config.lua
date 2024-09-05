return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"tsserver",
					"pylsp",
					"yamlls",
					"html",
					"cssls",
					"dockerls",
					"eslint",
					"bashls",
					"jsonls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.tsserver.setup({})
			lspconfig.pyright.setup({})
			lspconfig.html.setup({})
			lspconfig.lua_ls.setup({})
			lspconfig.yamlls.setup({})
			vim.keymap.set("n", "<C-space>", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Definition" })
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Reference" })
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
			vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, { desc = "Rename a variable" })
		end,
	},
}
