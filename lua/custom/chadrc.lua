---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "gruvbox",
  theme_toggle = { "gruvbox", "one_light" },

  transparency = false,

  tabufline = {
    enabled = false,
  },

  nvdash = {
    load_on_startup = true,
  },

  statusline = {
    theme = "minimal",
    separator_style = "round",
  },
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
