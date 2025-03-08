return {
	"aznhe21/actions-preview.nvim",
	config = function()
		vim.keymap.set({ "v", "n" }, "<leader>ca", require("actions-preview").code_actions, { desc = " Code actions" })
		require("actions-preview").setup({
			backend = { "telescope" },
			telescope = vim.tbl_extend("force", require("telescope.themes").get_dropdown(), {
				previewer = false,
				make_value = nil,
				make_make_display = nil,
			}),
		})
	end,
}
