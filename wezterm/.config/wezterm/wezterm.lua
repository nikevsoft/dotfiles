local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.term = "wezterm"

config.font = wezterm.font_with_fallback({ "MonoLisa Variable", "Symbols Nerd Font Mono", "Noto Color Emoji" })
config.font_size = 14.0

config.scrollback_lines = 10000

-- Theme
-- config.color_scheme = "Catppuccin Frappe"
config.colors = require("cyberdream")
config.window_decorations = "RESIZE"

-- Tabs
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false
config.tab_max_width = 16

-- Disable annoying bell sound
config.audible_bell = "Disabled"

-- Using wayland results in poor performance
config.enable_wayland = false

-- Removes the padding around the content
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

return config
