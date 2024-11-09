return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
		{ "folke/neodev.nvim", opts = {} },
	},
	config = function()
		local lspconfig = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		lspconfig.terraformls.setup({ capabilities = capabilities })
		lspconfig.ts_ls.setup({ capabilities = capabilities })
		lspconfig.basedpyright.setup({ capabilities = capabilities, filetypes = { "python" } })
		lspconfig.html.setup({ capabilities = capabilities })
		lspconfig.yamlls.setup({ capabilities = capabilities })
		lspconfig.lua_ls.setup({
			capabilities = capabilities,
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
					completion = {
						callSnippet = "Replace",
					},
				},
			},
		})
		vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Details" })
		vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Definition" })
		vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Reference" })
		vim.keymap.set("n", "<leader>gt", "<cmd>Telescope lsp_references<CR>", { desc = "Telescope reference" })
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
		vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, { desc = "Rename a variable" })
	end,
}
