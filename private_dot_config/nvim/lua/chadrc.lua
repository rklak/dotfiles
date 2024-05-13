-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local opt = vim.opt
opt.relativenumber = true -- Its better if you use motions like 10j or 5yk
vim.opt.swapfile = false

local M = {}

M.ui = {
  theme = "melange",
  tabufline = {
    enabled = false,
  },
  transparency = true,
}

return M
