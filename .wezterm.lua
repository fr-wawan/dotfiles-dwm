-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.font_size = 17
config.font = wezterm.font("JetBrains Mono Nerd Font", { weight = "Medium", italic = false })
config.enable_tab_bar = false
config.color_scheme = "Catppuccin Mocha"
config.window_padding = {
	left = 12,
	right = 12,
	top = 12,
	bottom = 12,
}

config.keys = {
	{
		key = "Enter",
		mods = "ALT",
		action = wezterm.action.DisableDefaultAssignment,
	},
}

-- config.line_height = 1.2

return config
