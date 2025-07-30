-- configuration/font.lua
local wezterm = require("wezterm")

return {
	font = wezterm.font("0xProto Nerd Font"),
	warn_about_missing_glyphs = false,
	font_size = 13,
	initial_cols = 150,
	initial_rows = 50,
}
