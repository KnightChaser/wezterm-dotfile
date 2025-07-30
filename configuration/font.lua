-- configuration/font.lua
local wezterm = require("wezterm")

return {
	font = wezterm.font("0xProto Nerd Font"),
	warn_about_missing_glyphs = false,
	font_size = 15,
	initial_cols = 110,
	initial_rows = 40,
}
