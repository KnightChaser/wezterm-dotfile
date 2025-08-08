-- configuration/font.lua
local wezterm = require("wezterm")

return {
	font = wezterm.font_with_fallback({
		{ family = "0xProto Nerd Font", weight = "Regular" }, -- Main font
		{ family = "Noto Sans CJK KR", weight = "Regular" },
	}),
	warn_about_missing_glyphs = false,
	font_size = 13,
	initial_cols = 150,
	initial_rows = 50,
}
