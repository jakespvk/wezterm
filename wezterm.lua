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
config.max_fps = 255
config.window_background_opacity = 0.80
config.font = wezterm.font('Iosevka', {weight='Regular'})
config.font_size = 17
--config.dpi = 196.0
--config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.colors = {
  tab_bar = {
    -- The color of the strip that goes along the top of the window
    -- (does not apply when fancy tab bar is in use)
    background = 'transparent',

    -- The active tab is the one that has focus in the window
    active_tab = {
      -- The color of the background area for the tab
      --bg_color = '#6e5057',
      bg_color = '#4a4a4a',
      -- The color of the text for the tab
      fg_color = '#c0c0c0',

      -- Specify whether you want "Half", "Normal" or "Bold" intensity for the
      -- label shown for this tab.
      -- The default is "Normal"
      intensity = 'Normal',

      -- Specify whether you want "None", "Single" or "Double" underline for
      -- label shown for this tab.
      -- The default is "None"
      underline = 'None',

      -- Specify whether you want the text to be italic (true) or not (false)
      -- for this tab.  The default is false.
      italic = false,

      -- Specify whether you want the text to be rendered with strikethrough (true)
      -- or not for this tab.  The default is false.
      strikethrough = false,
    },

    -- Inactive tabs are the tabs that do not have focus
    inactive_tab = {
      bg_color = 'transparent',
      fg_color = '#b5b5b5',

      -- The same options that were listed under the `active_tab` section above
      -- can also be used for `inactive_tab`.
    },

    -- You can configure some alternate styling when the mouse pointer
    -- moves over inactive tabs
    inactive_tab_hover = {
      bg_color = '#3b3052',
      fg_color = '#909090',
      italic = true,

      -- The same options that were listed under the `active_tab` section above
      -- can also be used for `inactive_tab_hover`.
    },

    -- The new tab button that let you create new tabs
    new_tab = {
      bg_color = 'transparent',
      fg_color = '#808080',

      -- The same options that were listed under the `active_tab` section above
      -- can also be used for `new_tab`.
    },

    -- You can configure some alternate styling when the mouse pointer
    -- moves over the new tab button
    new_tab_hover = {
      bg_color = '#3b3052',
      fg_color = '#909090',
      italic = true,

      -- The same options that were listed under the `active_tab` section above
      -- can also be used for `new_tab_hover`.
    },
  },
}
--config.window_padding = { left = 5, right = 0, top = 0, bottom = 0 }
config.window_padding = {
    left = '0.5cell',
    right = '0.5cell',
    top = '0.5cell',
    bottom = '1px'
}
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }
config.force_reverse_video_cursor = true
wezterm.action.SpawnCommandInNewWindow {
    args = { 'tmux' }
}

return config
