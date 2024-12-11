-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "doomchad",
	transparency = false,
}

M.ui = {
	cmp = {
		style = "flat_light",
	},
	statusline = {
		theme = "minimal",
		separator_style = "round",
	},
	tabufline = {
    enabled = true,
	},
}

return M
