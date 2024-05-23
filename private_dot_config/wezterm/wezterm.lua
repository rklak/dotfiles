local wezterm = require("wezterm")

return {
	color_scheme = "Srcery (Gogh)",
	enable_tab_bar = false,
	font_size = 13.0,
	window_background_opacity = 0.85,
	window_padding = { left = 0, right = 0, top = 0, bottom = 0 },
	window_decorations = "RESIZE",
	keys = {
		{
			key = "f",
			mods = "CTRL",
			action = wezterm.action.ToggleFullScreen,
		},
	},
}
