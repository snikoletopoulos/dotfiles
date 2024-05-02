local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- config.color_scheme = "GitHub Dark"
config.color_scheme = "Catppuccin Mocha"
-- config.window_background_image = "/Users/snikoletopoulos/.config/nvim/extras/terminal-background.gif"
-- config.window_background_opacity = 0.8
-- config.macos_window_background_blur = 20

config.font = wezterm.font("Firacode Nerd Font", { weight = "Medium" })
config.font_size = 13
config.line_height = 1.4

config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "MACOS_FORCE_ENABLE_SHADOW|INTEGRATED_BUTTONS|RESIZE"
config.native_macos_fullscreen_mode = true

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.inactive_pane_hsb = { brightness = 0.6 }

config.use_dead_keys = false
config.scrollback_lines = 5000
config.show_update_window = true

config.hide_tab_bar_if_only_one_tab = true
config.window_frame = { font_size = 12.0 }

wezterm.on("window-config-reloaded", function(window)
	window:toast_notification("wezterm", "Configuration reloaded!", nil, 4000)
end)

config.keys = {
	{
		key = "d",
		mods = "CMD|SHIFT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "d",
		mods = "CMD",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	-- Move Splits left and right
	{
		key = "J",
		mods = "CMD|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		key = "K",
		mods = "CMD|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "H",
		mods = "CMD|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "L",
		mods = "CMD|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
}

return config
