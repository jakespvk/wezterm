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

-- GitHub Dark/Wez best for Gruvbox Vim, while Snazzy best for Rose-Pine & TokyoNight
--config.color_scheme = 'GitHub Dark'
--config.color_scheme = 'Wez (Gogh)'
config.color_scheme = 'Snazzy (Gogh)'
--config.color_scheme = 'GruvboxDarkHard'


config.window_background_opacity = 0.95
config.font = wezterm.font('Iosevka', {weight='Light'})
config.font_size = 16
config.enable_tab_bar = false

-- and finally, return the configuration to wezterm
return config
