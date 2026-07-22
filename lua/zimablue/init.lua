-- MIT License Copyright (c) 2026 tan-wei
--
-- Zima Blue: A Neovim colorscheme inspired by the iconic color
-- from Love, Death & Robots.
-- ===================================================================
-- Variants (use via `colorscheme zimablue-sunset`, etc.):
--   default  : Deep space (the classic)
--   sunset   : Warm golden-orange horizon
--   pool     : Teal pool scene
--   volcano  : Lava and magma
--   storm    : Stormy ocean depths
-- ===================================================================

local M = {}

---@class ZimaBlueConfig
---@field transparent boolean Enable transparent background
---@field terminal_colors boolean Configure terminal colors
---@field dim_inactive boolean Dim inactive windows
---@field italic     boolean Enable italics for comments
---@field bold       boolean Enable bold for some keywords
---@field styles table|nil Style overrides for syntax groups
---@field on_colors fun(colors: table)|nil Override color groups
---@field on_highlights fun(highlights: table, colors: table)|nil Override highlight groups

---@type ZimaBlueConfig
local config = {
  transparent      = false,
  terminal_colors  = true,
  dim_inactive     = false,
  italic           = true,
  bold             = true,
  styles           = {},
  on_colors        = function(_) end,
  on_highlights    = function(_, _) end,
}

local C = require("zimablue.colors")

--- Wrapper for nvim_set_hl with optional overrides
---@param group string Highlight group name
---@param val   table  Highlight values
local function hl(group, val)
  vim.api.nvim_set_hl(0, group, val)
end

---@return boolean
local function bold()
  return config.bold
end

---@return boolean
local function italic()
  return config.italic
end

---@type fun(group: string, val: table)
local function fg(group, val)
  vim.api.nvim_set_hl(0, group, val)
end

--- Resolve the palette for a given variant (or default)
---@param variant string|nil
---@return table
local function resolve_palette(variant)
  local p = C[variant or "default"]
  if not p then
    vim.notify("zimablue: unknown variant '" .. (variant or "") .. "', using default", vim.log.levels.WARN)
    p = C["default"]
  end
  return p
end

---@param opts ZimaBlueConfig|nil
function M.setup(opts)
  opts = opts or {}
  config = vim.tbl_deep_extend("force", config, opts)

  -- Determine variant (from opts, fallback to default)
  local variant = config.variant or "default"
  local palette = resolve_palette(variant)
  config.variant = nil

  -- Reset and set name
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end
  vim.g.colors_name = (variant == "default") and "zimablue" or ("zimablue-" .. variant)

  -- Apply on_colors callback
  config.on_colors(palette)

  -- Set terminal colors (for :terminal and TUI)
  if config.terminal_colors then
    for i, color in ipairs({
      palette.terminal.black,
      palette.terminal.red,
      palette.terminal.green,
      palette.terminal.yellow,
      palette.terminal.blue,
      palette.terminal.magenta,
      palette.terminal.cyan,
      palette.terminal.white,
      palette.terminal.bright_black,
      palette.terminal.bright_red,
      palette.terminal.bright_green,
      palette.terminal.bright_yellow,
      palette.terminal.bright_blue,
      palette.terminal.bright_magenta,
      palette.terminal.bright_cyan,
      palette.terminal.bright_white,
    }) do
      vim.g["terminal_color_" .. (i - 1)] = color
    end
  end

  -- Build styles table for modules
  local styles = vim.tbl_deep_extend("force", {
    comments = config.italic and { italic = true } or {},
    keywords = config.italic and { italic = true } or {},
    functions = config.bold and { bold = true } or {},
    variables = {},
  }, config.styles or {})

  -- Load highlight modules in order
  require("zimablue.highlights").setup(palette, hl, fg, bold, italic, styles, config)
  require("zimablue.treesitter").setup(palette, hl, fg, bold, italic, styles, config)
  require("zimablue.lsp").setup(palette, hl, fg, bold, italic, styles, config)
  require("zimablue.plugins").setup(palette, hl, fg, bold, italic, styles, config)

  -- Apply on_highlights callback
  config.on_highlights({}, palette)
end

return M