return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local theme = {
			diag = {
				error = "#E82424",
				hint = "#6A9589",
				info = "#658594",
				ok = "#98BB6C",
				warning = "#FF9E3B",
			},
			diff = {
				add = "#2B3328",
				change = "#252535",
				delete = "#43242B",
				text = "#49443C",
			},
			syn = {
				comment = "#737C73",
				constant = "#B6927B",
				deprecated = "#717C7C",
				fun = "#8BA4B0",
				identifier = "#C4B28A",
				keyword = "#8992A7",
				number = "#A292A3",
				operator = "#C4746E",
				parameter = "#A6A69C",
				preproc = "#C4746E",
				punct = "#9E9B93",
				regex = "#C4746E",
				special1 = "#949FB5",
				special2 = "#C4746E",
				special3 = "#C4746E",
				statement = "#8992A7",
				string = "#8A9A7B",
				type = "#8EA4A2",
				variable = "none",
			},
			term = {
				"#0D0C0C",
				"#C4746E",
				"#8A9A7B",
				"#C4B28A",
				"#8BA4B0",
				"#A292A3",
				"#8EA4A2",
				"#C8C093",
				"#A6A69C",
				"#E46876",
				"#87A987",
				"#E6C384",
				"#7FB4CA",
				"#938AA9",
				"#7AA89F",
				"#C5C9C5",
				"#B6927B",
				"#B98D7B",
			},
			ui = {
				bg = "#181616",
				bg_dim = "#12120F",
				bg_gutter = "none",
				bg_m1 = "#1D1C19",
				bg_m2 = "#12120f",
				bg_m3 = "#0D0C0C",
				bg_p1 = "#282727",
				bg_p2 = "#393836",
				bg_search = "#2D4F67",
				bg_visual = "#223249",
				fg = "#C5C9C5",
				fg_dim = "#C8C093",
				fg_reverse = "#223249",
				float = {
					bg = "#0D0C0C",
					bg_border = "#0D0C0C",
					fg = "#C8C093",
					fg_border = "#54546D",
				},
				nontext = "#625E5A",
				pmenu = {
					bg = "#223249",
					bg_sbar = "#223249",
					bg_sel = "#2D4F67",
					bg_thumb = "#2D4F67",
					fg = "#DCD7BA",
					fg_sel = "none",
				},
				special = "#7A8382",
				whitespace = "#625E5A",
			},
			vcs = {
				added = "#76946A",
				changed = "#DCA561",
				removed = "#C34043",
			},
		}
		local palette = {
			autumnGreen = "#76946A",
			autumnRed = "#C34043",
			autumnYellow = "#DCA561",
			boatYellow1 = "#938056",
			boatYellow2 = "#C0A36E",
			carpYellow = "#E6C384",
			crystalBlue = "#7E9CD8",
			dragonAqua = "#8EA4A2",
			dragonAsh = "#737c73",
			dragonBlack0 = "#0D0C0C",
			dragonBlack1 = "#12120F",
			dragonBlack2 = "#1D1C19",
			dragonBlack3 = "#181616",
			dragonBlack4 = "#282727",
			dragonBlack5 = "#393836",
			dragonBlack6 = "#625E5A",
			dragonBlue = "#658594",
			dragonBlue2 = "#8BA4B0",
			dragonGray = "#A6A69C",
			dragonGray2 = "#9E9B93",
			dragonGray3 = "#7A8382",
			dragonGreen = "#87A987",
			dragonGreen2 = "#8A9A7B",
			dragonOrange = "#B6927B",
			dragonOrange2 = "#B98D7B",
			dragonPink = "#A292A3",
			dragonRed = "#C4746E",
			dragonTeal = "#949FB5",
			dragonViolet = "#8992A7",
			dragonWhite = "#C5C9C5",
			dragonYellow = "#C4B28A",
			fujiGray = "#727169",
			fujiWhite = "#DCD7BA",
			katanaGray = "#717C7C",
			lightBlue = "#A3D4D5",
			lotusAqua = "#597B75",
			lotusAqua2 = "#5E857A",
			lotusBlue1 = "#C7D7E0",
			lotusBlue2 = "#B5CBD2",
			lotusBlue3 = "#9FB5C9",
			lotusBlue4 = "#4D699B",
			lotusBlue5 = "#5D57A3",
			lotusCyan = "#D7E3D8",
			lotusGray = "#DCD7BA",
			lotusGray2 = "#716E61",
			lotusGray3 = "#8A8980",
			lotusGreen = "#6F894E",
			lotusGreen2 = "#6E915F",
			lotusGreen3 = "#B7D0AE",
			lotusInk1 = "#545464",
			lotusInk2 = "#43436C",
			lotusOrange = "#CC6D00",
			lotusOrange2 = "#E98A00",
			lotusPink = "#B35B79",
			lotusRed = "#C84053",
			lotusRed2 = "#D7474B",
			lotusRed3 = "#E82424",
			lotusRed4 = "#D9A594",
			lotusTeal1 = "#4E8CA2",
			lotusTeal2 = "#6693BF",
			lotusTeal3 = "#5a7785",
			lotusViolet1 = "#A09CAC",
			lotusViolet2 = "#766B90",
			lotusViolet3 = "#C9CBD1",
			lotusViolet4 = "#624C83",
			lotusWhite0 = "#D5CEA3",
			lotusWhite1 = "#DCD5AC",
			lotusWhite2 = "#E5DDB0",
			lotusWhite3 = "#F2ECBC",
			lotusWhite4 = "#E7DBA0",
			lotusWhite5 = "#E4D794",
			lotusYellow = "#77713F",
			lotusYellow2 = "#836F4A",
			lotusYellow3 = "#DE9800",
			lotusYellow4 = "#F9D791",
			oldWhite = "#C8C093",
			oniViolet = "#957FB8",
			oniViolet2 = "#B8B4D0",
			peachRed = "#FF5D62",
			roninYellow = "#FF9E3B",
			sakuraPink = "#D27E99",
			samuraiRed = "#E82424",
			springBlue = "#7FB4CA",
			springGreen = "#98BB6C",
			springViolet1 = "#938AA9",
			springViolet2 = "#9CABCA",
			sumiInk0 = "#16161D",
			sumiInk1 = "#181820",
			sumiInk2 = "#1A1A22",
			sumiInk3 = "#1F1F28",
			sumiInk4 = "#2A2A37",
			sumiInk5 = "#363646",
			sumiInk6 = "#54546D",
			surimiOrange = "#FFA066",
			waveAqua1 = "#6A9589",
			waveAqua2 = "#7AA89F",
			waveBlue1 = "#223249",
			waveBlue2 = "#2D4F67",
			waveRed = "#E46876",
			winterBlue = "#252535",
			winterGreen = "#2B3328",
			winterRed = "#43242B",
			winterYellow = "#49443C",
		}
		local has_devicons, devicons = pcall(require, "nvim-web-devicons")
		local static = {}

		local mode_text = {
			n = " NORMAL",
			i = " INSERT",
			v = " VISUAL",
			c = " COMMAND",
			R = " REPLACE",
			t = " TERMINAL",
		}
		local custom_icons = {
			git_branch = "",
			error = " ",
			warn = " ",
			info = " ",
			hint = " ",
			added = " ",
			modified = "󰝤 ",
			modified_simple = "~ ",
			removed = " ",
			lock = "",
			touched = "●",
		}

		local get_ftype_icon = function()
			local full_filename = vim.api.nvim_buf_get_name(0)
			local filename = vim.fn.fnamemodify(full_filename, ":t")
			local extension = vim.fn.fnamemodify(filename, ":e")
			static.ftype_icon, static.ftype_icon_color =
				devicons.get_icon_color(filename, extension, { default = true })
			return static.ftype_icon and static.ftype_icon .. ""
		end

		local condition = {
			is_buf_empty = function()
				return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
			end,
			is_git_repo = function()
				local filepath = vim.fn.expand("%:p:h")
				local gitdir = vim.fn.finddir(".git", filepath .. ";")
				return gitdir and #gitdir > 0 and #gitdir < #filepath
			end,
		}

		local mode_colors = {
			n = palette.springBlue,
			no = palette.dragonRed,
			cv = palette.dragonRed,
			ce = palette.dragonRed,
			["!"] = palette.dragonRed,
			t = palette.dragonRed,
			i = palette.dragonGreen,
			v = palette.dragonViolet,
			[""] = palette.dragonBlue,
			V = palette.dragonBlue,
			c = palette.dragonAqua,
			s = palette.dragonOrange,
			S = palette.dragonOrange,
			[""] = palette.dragonOrange,
			ic = palette.dragonYellow,
			R = palette.dragonViolet,
			Rv = palette.dragonViolet,
			r = palette.dragonTeal,
			rm = palette.dragonTeal,
			["r?"] = palette.dragonTeal,
		}

		-- ~  --------------------------------------------------------------------------------  ~ --

		-- ~  Config

		local config = {
			options = {
				component_separators = "",
				section_separators = "",
				always_divide_middle = true,
				theme = {
					normal = { c = { fg = theme.ui.fg, bg = "Normal", gui = "bold" } },
					inactive = { c = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 } },
				},
			},
			sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {},
			},
			inactive_sections = {
				lualine_a = { "filename" },
				lualine_b = { "location" },
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {},
			},
		}

		local status_c = function(component)
			table.insert(config.sections.lualine_c, component)
		end
		local status_x = function(component)
			table.insert(config.sections.lualine_x, component)
		end

		-- ~  --------------------------------------------------------------------------------  ~ --

		-- ~  Status line
		-- ~  Left

		status_c({
			function()
				return "  "
			end,
			color = { fg = palette.dragonWhite },
			padding = { left = 0 },
		})

		status_c({
			function()
				return mode_text[vim.fn.mode()]
				-- return custom_icons.mode
			end,
			color = function()
				return { bg = mode_colors[vim.fn.mode()], fg = "black" }
			end,
			padding = { right = 1 },
		})

		status_x({
			-- File type icon via 'nvim-web-devicons'
			function()
				if has_devicons then
					return get_ftype_icon()
				end
			end,
			cond = condition.is_buf_empty,
			color = { fg = static.ftype_icon_color },
			padding = { left = 1, right = 0 },
		})

		status_x({
			"filename",
			cond = condition.is_buf_empty,
			path = 0,
			color = { fg = palette.dragonAqua },
			symbols = {
				modified = custom_icons.touched,
				readonly = custom_icons.lock,
				unnamed = "[No Name]",
				newfile = "[New]",
			},
		})

		status_c({
			"diagnostics",
			sources = { "nvim_lsp", "nvim_diagnostic" },
			symbols = {
				error = custom_icons.error,
				warn = custom_icons.warn,
				info = custom_icons.info,
				hint = custom_icons.hint,
			},
			diagnostics_color = {
				error = { fg = theme.diag.error },
				warn = { fg = theme.diag.warning },
				info = { fg = theme.diag.info },
				hint = { fg = theme.diag.hint },
			},
			padding = { left = 1, right = 1 },
		})
		status_c({ "branch", icon = custom_icons.git_branch, color = { fg = palette.carpYellow } })
		status_c({
			"diff",
			cond = condition.is_git_repo,
			source = function()
				local gitsigns = vim.b.gitsigns_status_dict
				if gitsigns then
					return { added = gitsigns.added, modified = gitsigns.changed, removed = gitsigns.removed }
				end
			end,
			symbols = {
				added = custom_icons.added,
				modified = custom_icons.modified_simple,
				removed = custom_icons.removed,
			},
			colored = true,
			diff_color = {
				added = { fg = theme.vcs.added },
				modified = { fg = theme.vcs.changed },
				removed = { fg = theme.vcs.removed },
			},
		})

		-- ~  --------------------------------------------------------------------------------  ~ --
		-- ~  Mid

		status_c({
			function()
				return "%="
			end,
		})

		-- ~  --------------------------------------------------------------------------------  ~ --
		-- ~  Right

		status_x({
			function()
				return "  "
			end,
			color = { fg = palette.dragonWhite },
			padding = { right = 0 },
		})

		-- ~  --------------------------------------------------------------------------------  ~ --
		require("lualine").setup(config)
	end,
}
