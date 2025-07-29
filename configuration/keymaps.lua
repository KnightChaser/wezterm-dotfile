-- configuration/keymaps.lua

local wezterm = require("wezterm")
return {
	keys = {
		-- Alt+[1–9] -> jump to tab N (WezTerm tabs are zero‑indexed internally)
		--   so [Alt]+[1] -> ActivateTab 0,
		--      [Alt]+[2] -> ActivateTab 1, ...
		--      [Alt]+[9] -> ActivateTab 8
		-- Alt+0 for the last tab (index 9)
		-- Adjust as you see fit.
		{ key = "1", mods = "ALT", action = wezterm.action.ActivateTab(0) },
		{ key = "2", mods = "ALT", action = wezterm.action.ActivateTab(1) },
		{ key = "3", mods = "ALT", action = wezterm.action.ActivateTab(2) },
		{ key = "4", mods = "ALT", action = wezterm.action.ActivateTab(3) },
		{ key = "5", mods = "ALT", action = wezterm.action.ActivateTab(4) },
		{ key = "6", mods = "ALT", action = wezterm.action.ActivateTab(5) },
		{ key = "7", mods = "ALT", action = wezterm.action.ActivateTab(6) },
		{ key = "8", mods = "ALT", action = wezterm.action.ActivateTab(7) },
		{ key = "9", mods = "ALT", action = wezterm.action.ActivateTab(8) },
		{ key = "0", mods = "ALT", action = wezterm.action.ActivateTab(9) },

		-- Spawn a new tab: [Alt]+[t]
		{ key = "t", mods = "ALT", action = wezterm.action.SpawnTab("CurrentPaneDomain") },

		-- Close current tab without prompt: Alt+[w]
		{ key = "w", mods = "ALT", action = wezterm.action({ CloseCurrentTab = { confirm = false } }) },

		-- Splitting panes (Neovim-style)
		{ key = "\\", mods = "ALT", action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }) },
		{ key = "-", mods = "ALT", action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }) },

		-- Navigate between panes with Alt+H/J/K/L (like tmux/Vim)
		{ key = "H", mods = "ALT", action = wezterm.action({ ActivatePaneDirection = "Left" }) },
		{ key = "J", mods = "ALT", action = wezterm.action({ ActivatePaneDirection = "Down" }) },
		{ key = "K", mods = "ALT", action = wezterm.action({ ActivatePaneDirection = "Up" }) },
		{ key = "L", mods = "ALT", action = wezterm.action({ ActivatePaneDirection = "Right" }) },
	},
}
