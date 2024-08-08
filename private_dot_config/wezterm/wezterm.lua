local wezterm = require("wezterm")

-- Function to check if the operating system is Linux
local function is_linux()
	local handle = io.popen("uname")
	local result = handle:read("*a"):gsub("%s+", "") -- Remove extra whitespace
	handle:close()
	return result == "Linux"
end

-- Set the desired and fallback fonts
local desired_font = "Fira Code"
local fallback_font = "FiraCode Nerd Font"

-- Determine which font to use based on the operating system
local font_to_use = is_linux() and desired_font or fallback_font

-- WezTerm configuration
local config = {
	font = wezterm.font(font_to_use),
	font_size = 16,
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

return config
