return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		vim.opt.termguicolors = true
		require("bufferline").setup({
			options = {
				mode = "tabs",
				offsets = {
					{
						filetype = "neo-tree",
						text = "Nvim Tree",
						separator = true,
						text_align = "float",
					},
				},
				diagnostics = "nvim_lsp",
				separator_style = { "", "" },
				modified_icon = "●",
				show_close_icon = true,
				show_buffer_close_icons = true,
			},
			highlights = {
				tab_selected = {
					fg = "#ffffff",
					italic = false,
					bold = false,
				},
				warning_selected = {
					fg = "#ffffff",
					italic = false,
					bold = false,
				},
				buffer_selected = {
					fg = "#ffffff",
					italic = false,
					bold = false,
				},
				hint_selected = {
					fg = "#ffffff",
					italic = false,
					bold = false,
				},
				hint_diagnostic_selected = {
					fg = "#ffffff",
					italic = false,
					bold = false,
				},
			},
		})
	end,
}
