-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
config.default_prog = { '/usr/bin/zsh' }


-- For example, changing the color scheme:
config.color_scheme = 'Atelier Sulphurpool (base16)'
config.font = wezterm.font 'JetBrains Mono'

-- https://wezfurlong.org/wezterm/config/default-keys.html
config.keys = {
  {
    key = '1',
    mods = 'ALT',
    action = wezterm.action.ActivateTab(0)
  },
  {
    key = '2',
    mods = 'ALT',
    action = wezterm.action.ActivateTab(1)
  },
  {
    key = '3',
    mods = 'ALT',
    action = wezterm.action.ActivateTab(2)
  },
  {
    key = '4',
    mods = 'ALT',
    action = wezterm.action.ActivateTab(3)
  },
  {
    key = '5',
    mods = 'ALT',
    action = wezterm.action.ActivateTab(4)
  },
  {
    key = '6',
    mods = 'ALT',
    action = wezterm.action.ActivateTab(5)
  },
  {
    key = '7',
    mods = 'ALT',
    action = wezterm.action.ActivateTab(6)
  },
  {
    key = '8',
    mods = 'ALT',
    action = wezterm.action.ActivateTab(7)
  },
  {
    key = '9',
    mods = 'ALT',
    action = wezterm.action.ActivateTab(8)
  },
  {
    key = 'w',
    mods = 'CTRL',
    action = wezterm.action.CloseCurrentTab{confirm=true}
  },
  {
    key = '%',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitHorizontal{domain="CurrentPaneDomain"}
  },
  {
    key = '"',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitVertical{domain="CurrentPaneDomain"}
  },
  {
    key = 'LeftArrow',
    mods ='CTRL|SHIFT|ALT',
    action = wezterm.action.AdjustPaneSize{"Left", 3}
  },
  {
    key = 'RightArrow',
    mods ='CTRL|SHIFT|ALT',
    action = wezterm.action.AdjustPaneSize{"Right", 3}
  },
  {
    key = 'UpArrow', -- doesn't work for whatever reason. Probably caught by Distro?
    mods ='CTRL|SHIFT|ALT',
    action = wezterm.action.AdjustPaneSize{"Up", 3}
  },
  {
    key = 'DownArrow', -- doesn't work for whatever reason?
    mods ='CTRL|SHIFT|ALT', 
    action = wezterm.action.AdjustPaneSize{"Down", 3}
  },
  {
    key = 'LeftArrow',
    mods ='ALT',
    action = wezterm.action.ActivatePaneDirection("Left")
  },
  {
    key = 'RightArrow',
    mods ='ALT',
    action = wezterm.action.ActivatePaneDirection("Right")
  },
  {
    key = 'UpArrow',
    mods ='ALT',
    action = wezterm.action.ActivatePaneDirection("Up")
  },
  {
    key = 'DownArrow',
    mods ='ALT',
    action = wezterm.action.ActivatePaneDirection("Down")
  }
}

-- and finally, return the configuration to wezterm
return config
