return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"saghen/blink.cmp",
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
		{ "folke/neodev.nvim", opts = {} },
	},
	config = function()
		vim.lsp.enable("terraformls")
		vim.lsp.enable("ts_ls")
		vim.lsp.enable("pyright")
		vim.lsp.enable("html")
		vim.lsp.enable("yamlls")
		vim.lsp.enable("gopls")
		vim.lsp.enable("vuels")
		vim.lsp.enable("angularls")
		vim.lsp.enable("vuels")
		vim.lsp.enable("dockerls")
		vim.lsp.enable("lua_ls")
		vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Details" })
		vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Definition" })
		vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Reference" })
		vim.keymap.set("n", "<leader>gt", "<cmd>Telescope lsp_references<CR>", { desc = "Telescope reference" })
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
		vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, { desc = "Rename a variable" })
	end,
}
