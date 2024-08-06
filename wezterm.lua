local wezterm = require 'wezterm'
local config = {}
config.keys = {
    {
        key = 'F2',
        mode = 'CTRL|SHIFT',
        action = wezterm.action.ReloadConfiguration,
    },
}
if wezterm.config_builder then
  config = wezterm.config_builder()
end
--config.color_scheme = 'Wez (Gogh)'
config.color_scheme = 'Snazzy (Gogh)'
--config.default_cursor_style = 'SteadyBar'
config.cursor_thickness = "1pt"
config.max_fps = 165
config.window_background_opacity = 0.80
config.font = wezterm.font('Iosevka', {weight='Regular'})
config.font_size = 15
--config.dpi = 196.0
--config.enable_tab_bar = false
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }
config.force_reverse_video_cursor = true
wezterm.action.SpawnCommandInNewWindow {
    args = { 'tmux' }
}
return config
