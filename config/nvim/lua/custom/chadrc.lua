local opt = vim.opt
-------------------------------------- options ------------------------------------------
-- Indenting
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4

---@type ChadrcConfig 
local M = {}
M.ui = {theme = 'catppuccin'}
M.mappings = require "custom.mappings"
M.plugins = "custom.plugins"
return M
