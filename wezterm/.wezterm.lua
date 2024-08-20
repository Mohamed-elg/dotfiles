local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.enable_wayland = false
config.font = wezterm.font("MesloLGS NF")
config.font_size = 13
config.enable_tab_bar = false
-- config.window_decorations = "RESIZE"
config.window_background_opacity = 0.8
config.window_close_confirmation = 'NeverPrompt'
config.default_prog = { "zsh", "-lic", "tmux new-session -A -s master" }
return config
