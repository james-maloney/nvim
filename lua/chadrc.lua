-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
	theme = 'catppuccin',
	transparency = false,
  statusline = {
    theme = "minimal",
    separator_style = "round",
  },
  tabufline = {
    show_numbers = true,
  },
  cheatsheet = {
    theme = "simple",
  },
  cmp = {
    style = "flat_light"
  }}

return M
