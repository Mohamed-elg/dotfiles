return {
	{
		"f-person/git-blame.nvim",
		event = "VeryLazy",
		opts = {
			enabled = true,
			message_template = "󰜘 <author>, <date>",
			-- date_format = "%m-%d-%Y %H:%M:%S",
			date_format = "%r",
			virtual_text_column = 1, -- virtual text start column, check Start virtual text at column section for more options
		},
	},
	{ "AndreM222/copilot-lualine" },
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local git_blame = require("gitblame")
			vim.g.gitblame_display_virtual_text = 0
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
					component_separators = { left = " ", right = "" },
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
					lualine_c = { "%=", git_blame.get_current_blame_text },
					lualine_x = {},
					lualine_y = {
						{
							"copilot",
							symbols = {
								status = {
									icons = {
										enabled = " ",
										sleep = " ", -- auto-trigger disabled
										disabled = " ",
										warning = " ",
										unknown = " ",
									},
								},
								spinners = "dots", -- has some premade spinners
								spinner_color = "#6272A4",
							},
							show_colors = false,
							show_loading = true,
						},
						{
							"filetype",
							icon_only = true,
							show_modified_status = false,
							padding = { right = 0 },
							colored = false,
						},
						{ "filename", symbols = { modified = "●" }, padding = { left = 0, right = 1 } },
					},
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
	},
}
