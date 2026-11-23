-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will load the configuration.
local config = wezterm.config_builder()
local act = wezterm.action

config.font = wezterm.font("AurulentSansM Nerd Font Mono")
config.font_size = 19

-- Add additional config options here
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.color_scheme = "tokyonight_night"

--config.colors = {
--	foreground = "#CBE0F0",
--	background = "#071112",
--	cursor_bg = "#47FF9C",
--	cursor_border = "#47FF9C",
--	cursor_fg = "#011423",
--	selection_bg = "#033259",
--	selection_fg = "#CBE0F0",
--	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
--	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
--}

mouse_bindings = {
    -- Override default scroll wheel to scroll instead of sending arrow keys
    {
      event = { Down = { streak = 1, button = { WheelUp = { } } } },
      mods = 'NONE',
      action = act.ScrollByLine(1),
    },
    {
      event = { Down = { streak = 1, button = { WheelDown = { } } } },
      mods = 'NONE',
      action = act.ScrollByLine(-1),
    }
}
--

return config
