local wezterm = require "wezterm"

local config = wezterm.config_builder()

-- Default to Nushell
config.default_prog = { "nu.exe" }

-- Launch menu with labels
config.launch_menu = {
  { label = "Nushell",   args = { "nu.exe" } },
  { label = "PowerShell", args = { "pwsh.exe" } },
  { label = "CMD",       args = { "cmd.exe" } },
}

-- Apearance
config.color_scheme = "Tokyo Night Storm"
config.font = wezterm.font("FiraCode Nerd Font Mono")
config.enable_tab_bar = false
config.window_background_opacity = 0.99

return config