-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

config.keys = {
    {
        key = 'F2',
        mode = 'CTRL|SHIFT',
        action = wezterm.action.ReloadConfiguration,
    },
}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = '3024 (base16)'
config.window_background_opacity = 0.85
--config.font = wezterm.font 'VictorMono-Medium'
config.font_size = 12.0
config.enable_tab_bar = false

-- and finally, return the configuration to wezterm
return config

