local wezterm = require("wezterm")
local module = {}
function module.quality(config)
	-- pour empecher que le fullscreen soit dans le truc de camera
	config.native_macos_fullscreen_mode = true

	if wezterm.target_triple == "x86_64-unknown-linux-gnu" then
		config.integrated_title_button_style = "Gnome"
	end

	config.detect_password_input = true

	config.hide_tab_bar_if_only_one_tab = true
end
return module
