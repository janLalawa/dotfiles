local wezterm = require('wezterm')
local config = {}

-- Color scheme
config.color_scheme = 'Catppuccin Mocha'

-- Font configuration
config.font = wezterm.font({
    family = 'Hack Nerd Font',
    harfbuzz_features = {'calt=0', 'clig=0', 'liga=0'} -- Disable ligatures
})
config.font_size = 11.0
config.line_height = 1.0  -- Adjust line height multiplier
config.cell_width = 1.0   -- Adjust cell width multiplier

-- Window appearance
config.window_background_opacity = 0.95
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
    left = 8,
    right = 8,
    top = 8,
    bottom = 8,
}

-- Cursor configuration
config.default_cursor_style = 'BlinkingBlock'
config.cursor_blink_rate = 500

-- Key bindings
config.keys = {
    -- Add custom key bindings here
}

-- Disable default updates
config.check_for_updates = false

-- Enable scroll bar
config.enable_scroll_bar = true

-- Font rendering
config.freetype_load_target = "Light"  -- Adjust font rendering
config.freetype_render_target = "HorizontalLcd"

return config

