local wezterm = require 'wezterm'
local config = {}

-- Color scheme
config.color_scheme = 'Catppuccin Mocha'

config.line_height = 1.0 
config.cell_width = 1.0  

-- Window appearance
config.window_background_opacity = 0.95
config.window_decorations = "TITLE | RESIZE"
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
    left = 8,
    right = 8,
    top = 8,
    bottom = 8,
}

-- Font configuration
config.font = wezterm.font_with_fallback({
    'Hack Nerd Font',
    'Symbols Nerd Font Mono',  

})
config.font_size = 11.0
config.harfbuzz_features = { 'calt=1', 'clig=1', 'liga=1' }  -- Enable ligatures

-- Cursor configuration
config.default_cursor_style = 'BlinkingBlock'
config.cursor_blink_rate = 500

-- Key bindings
config.keys = {
   
}

-- Disable default updates
config.check_for_updates = false

-- Enable scroll bar
config.enable_scroll_bar = true

-- Font rendering
config.freetype_load_target = "Light"  
config.freetype_render_target = "HorizontalLcd"

-- Default shell configuration for Windows
config.default_prog = {
    'pwsh.exe',  
}

-- Enable Windows environment features
config.term = 'wezterm'
config.set_environment_variables = {
    TERM = "wezterm",
    COLORTERM = "truecolor",
    TERM_PROGRAM = "WezTerm",
}

-- Tab bar customization
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true

-- Better handling of Git and other CLI tools
config.enable_kitty_keyboard = true
config.enable_csi_u_key_encoding = true

config.default_domain = 'local'

return config

