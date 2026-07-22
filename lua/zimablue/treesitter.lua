-- MIT License Copyright (c) 2026 tan-wei
--
-- Zima Blue - Treesitter Highlight Groups
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
  -- Base
  -- ======================================================================
  hl("@text",          { fg = palette.fg })

  -- ======================================================================
  -- Comments
  -- ======================================================================
  hl("@comment",                { fg = palette.comment, italic = italic() })
  hl("@comment.error",          { fg = palette.lava_red })
  hl("@comment.hint",           { fg = palette.zima_blue_light })
  hl("@comment.info",           { fg = palette.blue })
  hl("@comment.note",           { fg = palette.zima_blue_light, bold = true })
  hl("@comment.todo",           { fg = palette.bg, bg = palette.zima_blue_light, bold = true })
  hl("@comment.warning",        { fg = palette.sunset_orange })
  hl("@comment.danger",         { fg = palette.lava_red })

  -- ======================================================================
  -- Punctuation / Delimiters
  -- ======================================================================
  hl("@punctuation.delimiter",            { fg = palette.fg_dim })
  hl("@punctuation.bracket",              { fg = palette.fg_dim })
  hl("@punctuation.special",              { fg = palette.zima_blue_light })
  hl("@punctuation.special.comment",      { fg = palette.comment })
  hl("@punctuation.special.markdown",     { fg = palette.sunset_orange })

  -- ======================================================================
  -- Constants
  -- ======================================================================
  hl("@constant",               { fg = palette.yellow })
  hl("@constant.builtin",       { fg = palette.zima_blue_bold })
  hl("@constant.macro",         { fg = palette.purple })

  -- ======================================================================
  -- Strings
  -- ======================================================================
  hl("@string",                 { fg = palette.green })
  hl("@string.documentation",   { fg = palette.green, italic = italic() })
  hl("@string.regexp",          { fg = palette.zima_blue_light })
  hl("@string.escape",          { fg = palette.zima_blue_bold })
  hl("@string.special",         { fg = palette.orange })
  hl("@string.special.symbol",  { fg = palette.zima_blue })
  hl("@string.special.url",     { fg = palette.blue, underline = true })
  hl("@string.special.path",    { fg = palette.zima_blue })
  hl("@character",              { fg = palette.green })
  hl("@character.special",      { fg = palette.orange })

  -- ======================================================================
  -- Numbers / Boolean
  -- ======================================================================
  hl("@number",                 { fg = palette.yellow })
  hl("@number.float",           { fg = palette.yellow })
  hl("@boolean",                { fg = palette.yellow })

  -- ======================================================================
  -- Types
  -- ======================================================================
  hl("@type",                   { fg = palette.cyan })
  hl("@type.builtin",           { fg = palette.cyan, italic = italic() })
  hl("@type.definition",        { fg = palette.cyan })
  hl("@type.qualifier",         { fg = palette.cyan })

  -- ======================================================================
  -- Attributes / Annotations
  -- ======================================================================
  hl("@attribute",              { fg = palette.zima_blue })
  hl("@attribute.builtin",      { fg = palette.zima_blue, italic = italic() })

  -- ======================================================================
  -- Properties
  -- ======================================================================
  hl("@property",               { fg = palette.zima_blue_light })

  -- ======================================================================
  -- Functions
  -- ======================================================================
  hl("@function",               { fg = palette.zima_blue })
  hl("@function.builtin",       { fg = palette.zima_blue_light })
  hl("@function.call",          { fg = palette.zima_blue })
  hl("@function.macro",         { fg = palette.purple })
  hl("@function.method",        { fg = palette.zima_blue })
  hl("@function.method.call",   { fg = palette.zima_blue })
  hl("@constructor",            { fg = palette.zima_blue_bold })
  hl("@constructor.tsx",        { fg = palette.zima_blue })
  hl("@parameter",              { fg = palette.orange })
  hl("@parameter.reference",    { fg = palette.orange })

  -- ======================================================================
  -- Variables
  -- ======================================================================
  hl("@variable",               { fg = palette.fg })
  hl("@variable.builtin",       { fg = palette.zima_blue_light, italic = italic() })
  hl("@variable.member",        { fg = palette.fg })
  hl("@variable.parameter",              { fg = palette.orange })
  hl("@variable.parameter.reference",    { fg = palette.orange })
  hl("@variable.parameter.builtin",      { fg = palette.orange })

  -- ======================================================================
  -- Keywords
  -- ======================================================================
  hl("@keyword",                { fg = palette.purple })
  hl("@keyword.coroutine",      { fg = palette.purple })
  hl("@keyword.function",       { fg = palette.blue, bold = bold() })
  hl("@keyword.operator",       { fg = palette.zima_blue })
  hl("@keyword.import",         { fg = palette.blue, italic = italic() })
  hl("@keyword.type",           { fg = palette.cyan, italic = italic() })
  hl("@keyword.modifier",       { fg = palette.blue })
  hl("@keyword.repeat",         { fg = palette.purple })
  hl("@keyword.return",         { fg = palette.purple, bold = bold() })
  hl("@keyword.debug",          { fg = palette.sunset_orange })
  hl("@keyword.exception",      { fg = palette.lava_red })
  hl("@keyword.conditional",    { fg = palette.purple })
  hl("@keyword.directive",        { fg = palette.purple })
  hl("@keyword.directive.define", { fg = palette.purple })
  hl("@keyword.storage",          { fg = palette.cyan })

  -- ======================================================================
  -- Conditional / Repeat (explicit aliases)
  -- ======================================================================
  hl("@conditional",            { fg = palette.purple })
  hl("@repeat",                 { fg = palette.purple })
  hl("@label",                  { fg = palette.blue })
  hl("@include",                { fg = palette.blue })

  -- ======================================================================
  -- Operator
  -- ======================================================================
  hl("@operator",               { fg = palette.zima_blue })

  -- ======================================================================
  -- Exception
  -- ======================================================================
  hl("@exception",              { fg = palette.red })

  -- ======================================================================
  -- Tags
  -- ======================================================================
  hl("@tag",                    { fg = palette.zima_blue })
  hl("@tag.attribute",          { fg = palette.zima_blue_light })
  hl("@tag.delimiter",          { fg = palette.fg_dim })
  hl("@tag.delimiter.tsx",      { fg = palette.fg_dim })
  hl("@tag.tsx",                { fg = palette.lava_red })
  hl("@tag.javascript",         { fg = palette.lava_red })

  -- ======================================================================
  -- Markup
  -- ======================================================================
  hl("@markup.heading",         { fg = palette.zima_blue, bold = bold() })
  hl("@markup.heading.1",       { fg = palette.zima_blue, bold = true })
  hl("@markup.heading.2",       { fg = palette.blue, bold = true })
  hl("@markup.heading.3",       { fg = palette.purple, bold = true })
  hl("@markup.heading.4",       { fg = palette.cyan, bold = true })
  hl("@markup.heading.5",       { fg = palette.green, bold = true })
  hl("@markup.heading.6",       { fg = palette.fg_dim, bold = true })

  hl("@markup.strong",          { bold = true })
  hl("@markup.italic",          { italic = true })
  hl("@markup.strikethrough",   { strikethrough = true })
  hl("@markup.underline",       { underline = true })

  hl("@markup.link",            { fg = palette.blue, underline = true })
  hl("@markup.link.url",        { fg = palette.blue, underline = true })
  hl("@markup.link.label",      { fg = palette.zima_blue_light })
  hl("@markup.raw",             { fg = palette.green })
  hl("@markup.raw.block",       { fg = palette.green })
  hl("@markup.raw.markdown_inline", { bg = palette.bg_highlight, fg = palette.green })
  hl("@markup.quote",           { fg = palette.comment, italic = italic() })
  hl("@markup.list",            { fg = palette.zima_blue })
  hl("@markup.list.checked",    { fg = palette.green })
  hl("@markup.list.unchecked",  { fg = palette.fg_idle })
  hl("@markup.list.markdown",   { fg = palette.sunset_orange, bold = true })
  hl("@markup.math",            { fg = palette.zima_blue_light })
  hl("@markup.environment",     { fg = palette.purple })

  -- ======================================================================
  -- Literals (diff embedded in markup)
  -- ======================================================================
  hl("@diff.plus",       { fg = palette.green })
  hl("@diff.minus",      { fg = palette.red })
  hl("@diff.delta",      { fg = palette.yellow })

  -- ======================================================================
  -- Modules / Namespace
  -- ======================================================================
  hl("@module",          { fg = palette.fg })
  hl("@module.builtin",  { fg = palette.zima_blue })

  -- ======================================================================
  -- Namespace
  -- ======================================================================
  hl("@namespace",       { fg = palette.zima_blue })

  -- ======================================================================
  -- Errors
  -- ======================================================================
  hl("@error",           { fg = palette.red, bold = true })

  -- ======================================================================
  -- None group (catch-all for uncaptured text)
  -- ======================================================================
  hl("@none",            {})
end

return M