return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
				symbols = {
					branch = "",
					error = " ",
					warn = " ",
					info = " ",
					hint = " ",
					added = " ",
					modified = "~ ",
					removed = " ",
					lock = "",
					-- modified = "●",
				},
				use_mode_colors = true,
				section_separators = { left = "", right = "" },
				component_separators = { left = "|", right = "" },
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				always_show_tabline = true,
				globalstatus = false,
				refresh = {
					statusline = 100,
					tabline = 100,
					winbar = 100,
				},
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = {
					{ "diagnostics", always_visible = false, colored = false },
					{ "branch", icon = "" },
					{ "diff", colored = false },
				},
				lualine_c = { "" },
				lualine_x = {
					{
						"filetype",
						icon_only = true,
						show_modified_status = false,
						padding = { right = 0 },
						colored = false,
					},
					{ "filename", symbols = { modified = "●" }, padding = { left = 0, right = 1 } },
				},
				lualine_y = {},
				lualine_z = { "progress" },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = { "neo-tree" },
		})
	end,
}
