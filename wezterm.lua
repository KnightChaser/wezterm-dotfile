-- wezterm.lua (entrypoint)
local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- merge in modules
local modules = { "color", "font", "keymaps" }
for _, name in ipairs(modules) do
	local ok, opts = pcall(require, "configuration." .. name)
	if ok and type(opts) == "table" then
		for k, v in pairs(opts) do
			config[k] = v
		end
	else
		-- Add this line for debugging
		wezterm.log_error("Failed to load module: " .. name)
	end
end

return config
