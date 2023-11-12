local keybinds = require 'keybinds'
local wezterm = require 'wezterm'
local config = {}


config.color_scheme = 'nordfox'
config.enable_wayland = true
config.use_ime = true

config.enable_scroll_bar = false
config.pane_focus_follows_mouse = true

config.freetype_load_target = "Normal"

config.font_size = 16
config.font = wezterm.font('JetBrains Mono', { weight = 'Bold', italic = true })
config.keys = keybinds.keys
config.disable_default_key_bindings = false

config.line_height = 1;
config.cell_width = 1;


config.hide_mouse_cursor_when_typing = true
config.hide_tab_bar_if_only_one_tab = true

config.window_close_confirmation = 'NeverPrompt'
config.window_decorations = "None"

config.max_fps = 120
config.animation_fps = 120

return config
