-- configuration/keymaps.lua

local wezterm = require("wezterm")
return {
	keys = {
		-- [Ctrl]+[1–9] -> jump to tab N (WezTerm tabs are zero‑indexed internally)
		--   so [Ctrl]+[1] -> ActivateTab 0,
		--      [Ctrl]+[2] -> ActivateTab 1, ...
		--      [Ctrl]+[9] -> ActivateTab 8
		-- [Ctrl]+0 for the last tab (index 9)
		-- Adjust as you see fit.
		{ key = "1", mods = "CTRL", action = wezterm.action.ActivateTab(0) },
		{ key = "2", mods = "CTRL", action = wezterm.action.ActivateTab(1) },
		{ key = "3", mods = "CTRL", action = wezterm.action.ActivateTab(2) },
		{ key = "4", mods = "CTRL", action = wezterm.action.ActivateTab(3) },
		{ key = "5", mods = "CTRL", action = wezterm.action.ActivateTab(4) },
		{ key = "6", mods = "CTRL", action = wezterm.action.ActivateTab(5) },
		{ key = "7", mods = "CTRL", action = wezterm.action.ActivateTab(6) },
		{ key = "8", mods = "CTRL", action = wezterm.action.ActivateTab(7) },
		{ key = "9", mods = "CTRL", action = wezterm.action.ActivateTab(8) },
		{ key = "0", mods = "CTRL", action = wezterm.action.ActivateTab(9) },

		-- Spawn a new tab: [Ctrl]+[t]
		{ key = "t", mods = "CTRL", action = wezterm.action.SpawnTab("CurrentPaneDomain") },

		-- Close current tab without prompt: [Ctrl]+[w]
		{ key = "w", mods = "CTRL", action = wezterm.action({ CloseCurrentTab = { confirm = false } }) },

		-- Splitting panes (Neovim-style)
		{ key = "\\", mods = "CTRL", action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }) },
		{ key = "-", mods = "CTRL", action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }) },

		-- Navigate between panes with Alt+H/J/K/L (like tmux/Vim)
		{ key = "H", mods = "CTRL", action = wezterm.action({ ActivatePaneDirection = "Left" }) },
		{ key = "J", mods = "CTRL", action = wezterm.action({ ActivatePaneDirection = "Down" }) },
		{ key = "K", mods = "CTRL", action = wezterm.action({ ActivatePaneDirection = "Up" }) },
		{ key = "L", mods = "CTRL", action = wezterm.action({ ActivatePaneDirection = "Right" }) },
	},
}
