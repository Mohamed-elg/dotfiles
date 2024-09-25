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
                icon = "  ",
                icon_hl = "DashboardIcon",
                desc = "Find File",
                desc_hl = "DashboardDesc",
                key = "f",
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
                icon = "  ",
                icon_hl = "DashboardIcon",
                desc = "Grep",
                desc_hl = "DashboardDesc",
                key = "e",
                key_hl = "DashboardKey",
                key_format = " [%s]",
                action = "Telescope live_grep",
            },
            {
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
                icon = "  ",
                icon_hl = "DashboardIcon",
                desc = "Git",
                desc_hl = "DashboardDesc",
                key = "g",
                key_hl = "DashboardKey",
                key_format = " [%s]",
                action = ":LazyGit",
            },
            {
                icon = "  ",
                icon_hl = "DashboardIcon",
                desc = "Lazy",
                desc_hl = "DashboardDesc",
                key = "l",
                key_hl = "DashboardKey",
                key_format = " [%s]",
                action = ":Lazy",
            },
            {
                icon = "  ",
                icon_hl = "DashboardIcon",
                desc = "Mason",
                desc_hl = "DashboardDesc",
                key = "m",
                key_hl = "DashboardKey",
                key_format = " [%s]",
                action = ":Mason",
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
            }
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
