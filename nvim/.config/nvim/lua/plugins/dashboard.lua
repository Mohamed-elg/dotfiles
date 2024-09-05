return {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
        local dashboard = require("dashboard")

        dashboard.custom_header = {
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                     ]],
            [[       ████ ██████           █████      ██                     ]],
            [[      ███████████             █████                             ]],
            [[      █████████ ███████████████████ ███   ███████████   ]],
            [[     █████████  ███    █████████████ █████ ██████████████   ]],
            [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
            [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
            [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
        }

        dashboard.custom_center = {
            {
                icon = "  ",
                icon_hl = "DashboardIcon",
                desc = "Find File",
                desc_hl = "DashboardDesc",
                key = "e",
                key_hl = "DashboardKey",
                key_format = " [%s]",
                action = "Telescope find_files",
            },
            {
                icon = "  ",
                icon_hl = "DashboardIcon",
                desc = "Recent Files",
                desc_hl = "DashboardDesc",
                key = "r",
                key_hl = "DashboardKey",
                key_format = " [%s]",
                action = "Telescope oldfiles",
            },
            {
                icon = "  ",
                icon_hl = "DashboardIcon",
                desc = "New File",
                desc_hl = "DashboardDesc",
                key = "n",
                key_hl = "DashboardKey",
                key_format = " [%s]",
                action = ":enew",
            },
            {{
                icon = "  ",
                icon_hl = "DashboardIcon",
                desc = "Settings",
                desc_hl = "DashboardDesc",
                key = "s",
                key_hl = "DashboardKey",
                key_format = " [%s]",
                action = ":e $MYVIMRC",
            },

                icon = "󰁯  ",
                icon_hl = "DashboardIcon",
                desc = "Restore Session",
                desc_hl = "DashboardDesc",
                key = "s",
                key_hl = "DashboardKey",
                key_format = " [%s]",
                action = ":SessionSearch",
            },
            {
                icon = "  ",
                icon_hl = "DashboardIcon",
                desc = "Quit",
                desc_hl = "DashboardDesc",
                key = "q",
                key_hl = "DashboardKey",
                key_format = " [%s]",
                action = ":qa",
            },
        }

        dashboard.custom_footer = {
            "",
            "M.E",
        }

        require("dashboard").setup({
            theme = "doom",
            config = {
                header = dashboard.custom_header,
                center = dashboard.custom_center,
                footer = dashboard.custom_footer,
            },
        })
    end,
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
