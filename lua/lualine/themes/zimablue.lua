-- MIT License Copyright (c) 2026 tan-wei
--
-- Zima Blue — Lualine theme
-- Dynamically adapts to the active variant (default, sunset, pool, etc.)

local M = {}

-- Resolve the active variant's palette at module load time
local colors_name = vim.g.colors_name or "zimablue"
local variant = colors_name:match("^zimablue%-?(.*)$") or "default"
if variant == "" then variant = "default" end
local palette = require("zimablue.colors")[variant] or require("zimablue.colors")["default"]

M.normal = {
  a = { bg = palette.zima_blue, fg = palette.bg, gui = "bold" },
  b = { bg = palette.bg_highlight, fg = palette.zima_blue },
  c = { bg = palette.bg_alt, fg = palette.fg_dim },
}

M.insert = {
  a = { bg = palette.green, fg = palette.bg, gui = "bold" },
  b = { bg = palette.bg_highlight, fg = palette.green },
}

M.visual = {
  a = { bg = palette.purple, fg = palette.bg, gui = "bold" },
  b = { bg = palette.bg_highlight, fg = palette.purple },
}

M.replace = {
  a = { bg = palette.lava_red, fg = palette.bg, gui = "bold" },
  b = { bg = palette.bg_highlight, fg = palette.lava_red },
}

M.command = {
  a = { bg = palette.yellow, fg = palette.bg, gui = "bold" },
  b = { bg = palette.bg_highlight, fg = palette.yellow },
}

M.terminal = {
  a = { bg = palette.cyan, fg = palette.bg, gui = "bold" },
  b = { bg = palette.bg_highlight, fg = palette.cyan },
}

M.inactive = {
  a = { bg = palette.bg_alt, fg = palette.zima_blue },
  b = { bg = palette.bg_alt, fg = palette.fg_idle, gui = "bold" },
  c = { bg = palette.bg_alt, fg = palette.fg_idle },
}

return M