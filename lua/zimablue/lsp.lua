-- MIT License Copyright (c) 2026 tan-wei
--
-- Zima Blue - LSP Semantic Token Highlight Groups
-- ===================================================================

local M = {}

---@param palette ZimaBluePalette
---@param hl fun(group: string, val: table)
---@param fg fun(group: string, val: table)
---@param bold fun(): boolean
---@param italic fun(): boolean
---@param styles table|nil
---@param config table|nil
function M.setup(palette, hl, fg, bold, italic, styles, config)

  -- ======================================================================
  -- LSP Semantic Tokens
  -- Reference: https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#semanticTokenTypes
  -- ======================================================================

  -- Namespace / Module
  hl("@lsp.type.namespace", { fg = palette.fg })
  hl("@lsp.type.module",    { fg = palette.fg })

  -- Types / Classes / Structs / Interfaces
  hl("@lsp.type.class",         { fg = palette.cyan })
  hl("@lsp.type.struct",        { fg = palette.cyan })
  hl("@lsp.type.interface",     { fg = palette.cyan })
  hl("@lsp.type.enum",          { fg = palette.cyan })
  hl("@lsp.type.enumMember",    { fg = palette.yellow })
  hl("@lsp.type.typeParameter", { fg = palette.cyan, italic = italic() })
  hl("@lsp.type.builtinType",   { link = "@type.builtin" })

  -- Functions / Methods
  hl("@lsp.type.function",     { fg = palette.zima_blue })
  hl("@lsp.type.method",       { fg = palette.zima_blue })
  hl("@lsp.type.decorator",    { fg = palette.purple })
  hl("@lsp.type.deriveHelper", { link = "@attribute" })

  -- Variables / Properties
  hl("@lsp.type.variable",        { fg = palette.fg })
  hl("@lsp.type.property",        { fg = palette.zima_blue_light })
  hl("@lsp.type.parameter",       { fg = palette.orange })
  hl("@lsp.type.field",           { fg = palette.fg })
  hl("@lsp.type.selfKeyword",     { link = "@variable.builtin" })
  hl("@lsp.type.selfTypeKeyword", { link = "@variable.builtin" })
  hl("@lsp.type.generic",         { link = "@variable" })

  -- Keywords / Constants
  hl("@lsp.type.keyword",         { fg = palette.purple })
  hl("@lsp.type.macro",           { fg = palette.purple })
  hl("@lsp.type.comment",         { fg = palette.comment, italic = italic() })
  hl("@lsp.type.string",          { fg = palette.green })
  hl("@lsp.type.number",          { fg = palette.yellow })
  hl("@lsp.type.boolean",         { fg = palette.yellow })
  hl("@lsp.type.escapeSequence",  { link = "@string.escape" })
  hl("@lsp.type.formatSpecifier", { link = "@markup.list" })
  hl("@lsp.type.lifetime",        { link = "@keyword.storage" })
  hl("@lsp.type.operator",        { link = "@operator" })
  hl("@lsp.type.typeAlias",       { link = "@type.definition" })

  -- Unresolved references (red undercurl)
  hl("@lsp.type.unresolvedReference", { undercurl = true, sp = palette.lava_red })

  -- ======================================================================
  -- LSP Semantic Token Modifiers
  -- ======================================================================
  hl("@lsp.mod.readonly",   { fg = palette.fg })
  hl("@lsp.mod.static",     { italic = italic() })
  hl("@lsp.mod.abstract",   { italic = italic() })
  hl("@lsp.mod.deprecated", { fg = palette.sunset_orange, strikethrough = true })
  hl("@lsp.mod.definition", { bold = bold() })

  -- C++ specific
  hl("@lsp.typemod.class.defaultLibrary",    { fg = palette.cyan })
  hl("@lsp.typemod.struct.defaultLibrary",   { fg = palette.cyan })
  hl("@lsp.typemod.function.defaultLibrary", { fg = palette.zima_blue_light })
  hl("@lsp.typemod.variable.defaultLibrary", { fg = palette.zima_blue_light, italic = italic() })
  hl("@lsp.typemod.variable.static",         { link = "@constant" })
  hl("@lsp.typemod.variable.callable",       { link = "@function" })

  -- ======================================================================
  -- LSP Inlay Hints
  -- ======================================================================
  hl("LspInlayHint", { fg = palette.fg_idle, bg = palette.bg_highlight })
end

return M
