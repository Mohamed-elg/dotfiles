return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		{ "antosha417/nvim-lsp-file-operations", config = true },
	},
	config = function()
		require("lsp-file-operations").setup()
		vim.lsp.enable(
			"terraformls",
			"ts_ls",
			"ty",
			"html",
			"yamlls",
			"gopls",
			"vuels",
			"angularls",
			"dockerls",
			"bashls",
			"lua_ls"
		)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Details" })
		vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Definition" })
		vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Reference" })
		vim.keymap.set("n", "<leader>gt", "<cmd>Telescope lsp_references<CR>", { desc = "Telescope reference" })
		vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, { desc = "Rename a variable" })
	end,
}
