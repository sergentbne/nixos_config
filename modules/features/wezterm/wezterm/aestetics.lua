local wezterm = require("wezterm")

local module = {}

function module.beautify(config)
	config.initial_cols = 80
	config.initial_rows = 24
	config.font_size = 14

	-- config.color_scheme = "rose-pine"
	config.colors = {
		selection_bg = "#2a283e",
		selection_fg = "#e0def4",
	}
	local theme = wezterm.plugin.require('https://github.com/neapsix/wezterm').main
	config.colors = theme.colors()

	config.window_frame = theme.window_frame()

	config.font = wezterm.font("JetBrains Mono")
end

return module
