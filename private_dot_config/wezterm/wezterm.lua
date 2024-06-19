local wezterm = require("wezterm")

return {
	font = wezterm.font("Fira Code"),
	color_scheme = "Firefly Traditional",
	enable_tab_bar = false,
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
