return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		vim.lsp.enable("terraformls")
		vim.lsp.enable("ts_ls")
		vim.lsp.enable("pyright")
		vim.lsp.enable("html")
		vim.lsp.enable("yamlls")
		vim.lsp.enable("gopls")
		vim.lsp.enable("vuels")
		vim.lsp.enable("angularls")
		vim.lsp.enable("dockerls")
		vim.lsp.enable("lua_ls")
		vim.lsp.config("lua_ls", {
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})
		vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Details" })
		vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Definition" })
		vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Reference" })
		vim.keymap.set("n", "<leader>gt", "<cmd>Telescope lsp_references<CR>", { desc = "Telescope reference" })
		-- vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
		vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, { desc = "Rename a variable" })
	end,
}
