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
  styles = styles or {}

  -- ======================================================================
  -- Base
  -- ======================================================================
  hl("@text", { fg = palette.fg })

  -- ======================================================================
  -- Comments
  -- ======================================================================
  hl("@comment",         vim.tbl_extend("force", { fg = palette.comment }, styles.comments or {}))
  hl("@comment.error",   { fg = palette.lava_red })
  hl("@comment.hint",    { fg = palette.zima_blue_light })
  hl("@comment.info",    { fg = palette.blue })
  hl("@comment.note",    { fg = palette.zima_blue_light, bold = true })
  hl("@comment.todo",    { fg = palette.bg, bg = palette.zima_blue_light, bold = true })
  hl("@comment.warning", { fg = palette.sunset_orange })
  hl("@comment.danger",  { fg = palette.lava_red })

  -- ======================================================================
  -- Punctuation / Delimiters
  -- ======================================================================
  hl("@punctuation.delimiter",        { fg = palette.fg_dim })
  hl("@punctuation.bracket",          { fg = palette.fg_dim })
  hl("@punctuation.special",          { fg = palette.zima_blue_light })
  hl("@punctuation.special.comment",  { fg = palette.comment })
  hl("@punctuation.special.markdown", { fg = palette.sunset_orange })

  -- ======================================================================
  -- Constants
  -- ======================================================================
  hl("@constant",         { fg = palette.yellow })
  hl("@constant.builtin", { fg = palette.zima_blue_bold })
  hl("@constant.macro",   { fg = palette.purple })

  -- ======================================================================
  -- Strings
  -- ======================================================================
  hl("@string",                { fg = palette.green })
  hl("@string.documentation",  { fg = palette.green, italic = italic() })
  hl("@string.regexp",         { fg = palette.zima_blue_light })
  hl("@string.escape",         { fg = palette.zima_blue_bold })
  hl("@string.special",        { fg = palette.orange })
  hl("@string.special.symbol", { fg = palette.zima_blue })
  hl("@string.special.url",    { fg = palette.blue, underline = true })
  hl("@string.special.path",   { fg = palette.zima_blue })
  hl("@character",             { fg = palette.green })
  hl("@character.special",     { fg = palette.orange })

  -- ======================================================================
  -- Numbers / Boolean
  -- ======================================================================
  hl("@number",       { fg = palette.yellow })
  hl("@number.float", { fg = palette.yellow })
  hl("@boolean",      { fg = palette.yellow })

  -- ======================================================================
  -- Types
  -- ======================================================================
  hl("@type",            { fg = palette.cyan })
  hl("@type.builtin",    { fg = palette.cyan, italic = italic() })
  hl("@type.definition", { fg = palette.cyan })
  hl("@type.qualifier",  { fg = palette.cyan })

  -- ======================================================================
  -- Attributes / Annotations
  -- ======================================================================
  hl("@attribute",         { fg = palette.zima_blue })
  hl("@attribute.builtin", { fg = palette.zima_blue, italic = italic() })

  -- ======================================================================
  -- Properties
  -- ======================================================================
  hl("@property", { fg = palette.zima_blue_light })

  -- ======================================================================
  -- Functions
  -- ======================================================================
  hl("@function",             vim.tbl_extend("force", { fg = palette.zima_blue }, styles.functions or {}))
  hl("@function.builtin",     vim.tbl_extend("force", { fg = palette.zima_blue_light }, styles.functions or {}))
  hl("@function.call",        vim.tbl_extend("force", { fg = palette.zima_blue }, styles.functions or {}))
  hl("@function.macro",       vim.tbl_extend("force", { fg = palette.purple }, styles.functions or {}))
  hl("@function.method",      vim.tbl_extend("force", { fg = palette.zima_blue }, styles.functions or {}))
  hl("@function.method.call", vim.tbl_extend("force", { fg = palette.zima_blue }, styles.functions or {}))
  hl("@constructor",          { fg = palette.zima_blue_bold })
  hl("@constructor.tsx",      { fg = palette.zima_blue })
  hl("@parameter",            { fg = palette.orange })
  hl("@parameter.reference",  { fg = palette.orange })

  -- ======================================================================
  -- Variables
  -- ======================================================================
  hl("@variable",                     vim.tbl_extend("force", { fg = palette.fg }, styles.variables or {}))
  hl("@variable.builtin",             { fg = palette.zima_blue_light, italic = italic() })
  hl("@variable.member",              { fg = palette.fg })
  hl("@variable.parameter",           { fg = palette.orange })
  hl("@variable.parameter.reference", { fg = palette.orange })
  hl("@variable.parameter.builtin",   { fg = palette.orange })

  -- ======================================================================
  -- Keywords
  -- ======================================================================
  hl("@keyword",                  vim.tbl_extend("force", { fg = palette.purple }, styles.keywords or {}))
  hl("@keyword.coroutine",        vim.tbl_extend("force", { fg = palette.purple }, styles.keywords or {}))
  hl("@keyword.function",         vim.tbl_extend("force", { fg = palette.blue, bold = bold() }, styles.keywords or {}))
  hl("@keyword.operator",         vim.tbl_extend("force", { fg = palette.zima_blue }, styles.keywords or {}))
  hl("@keyword.import",           vim.tbl_extend("force", { fg = palette.blue, italic = italic() }, styles.keywords or {}))
  hl("@keyword.type",             vim.tbl_extend("force", { fg = palette.cyan, italic = italic() }, styles.keywords or {}))
  hl("@keyword.modifier",         vim.tbl_extend("force", { fg = palette.blue }, styles.keywords or {}))
  hl("@keyword.repeat",           vim.tbl_extend("force", { fg = palette.purple }, styles.keywords or {}))
  hl("@keyword.return",           vim.tbl_extend("force", { fg = palette.purple, bold = bold() }, styles.keywords or {}))
  hl("@keyword.debug",            vim.tbl_extend("force", { fg = palette.sunset_orange }, styles.keywords or {}))
  hl("@keyword.exception",        vim.tbl_extend("force", { fg = palette.lava_red }, styles.keywords or {}))
  hl("@keyword.conditional",      vim.tbl_extend("force", { fg = palette.purple }, styles.keywords or {}))
  hl("@keyword.directive",        vim.tbl_extend("force", { fg = palette.purple }, styles.keywords or {}))
  hl("@keyword.directive.define", vim.tbl_extend("force", { fg = palette.purple }, styles.keywords or {}))
  hl("@keyword.storage",          vim.tbl_extend("force", { fg = palette.cyan }, styles.keywords or {}))

  -- ======================================================================
  -- Conditional / Repeat (explicit aliases)
  -- ======================================================================
  hl("@conditional", { fg = palette.purple })
  hl("@repeat",      { fg = palette.purple })
  hl("@label",       { fg = palette.blue })
  hl("@include",     { fg = palette.blue })

  -- ======================================================================
  -- Operator
  -- ======================================================================
  hl("@operator", { fg = palette.zima_blue })

  -- ======================================================================
  -- Exception
  -- ======================================================================
  hl("@exception", { fg = palette.red })

  -- ======================================================================
  -- Tags
  -- ======================================================================
  hl("@tag",               { fg = palette.zima_blue })
  hl("@tag.attribute",     { fg = palette.zima_blue_light })
  hl("@tag.delimiter",     { fg = palette.fg_dim })
  hl("@tag.delimiter.tsx", { fg = palette.fg_dim })
  hl("@tag.tsx",           { fg = palette.lava_red })
  hl("@tag.javascript",    { fg = palette.lava_red })

  -- ======================================================================
  -- Markup
  -- ======================================================================
  hl("@markup.heading",   { fg = palette.zima_blue, bold = bold() })
  hl("@markup.heading.1", { fg = palette.zima_blue, bold = true })
  hl("@markup.heading.2", { fg = palette.blue, bold = true })
  hl("@markup.heading.3", { fg = palette.purple, bold = true })
  hl("@markup.heading.4", { fg = palette.cyan, bold = true })
  hl("@markup.heading.5", { fg = palette.green, bold = true })
  hl("@markup.heading.6", { fg = palette.fg_dim, bold = true })

  hl("@markup.strong",        { bold = true })
  hl("@markup.italic",        { italic = true })
  hl("@markup.strikethrough", { strikethrough = true })
  hl("@markup.underline",     { underline = true })

  hl("@markup.link",                { fg = palette.blue, underline = true })
  hl("@markup.link.url",            { fg = palette.blue, underline = true })
  hl("@markup.link.label",          { fg = palette.zima_blue_light })
  hl("@markup.raw",                 { fg = palette.green })
  hl("@markup.raw.block",           { fg = palette.green })
  hl("@markup.raw.markdown_inline", { bg = palette.bg_highlight, fg = palette.green })
  hl("@markup.quote",               { fg = palette.comment, italic = italic() })
  hl("@markup.list",                { fg = palette.zima_blue })
  hl("@markup.list.checked",        { fg = palette.green })
  hl("@markup.list.unchecked",      { fg = palette.fg_idle })
  hl("@markup.list.markdown",       { fg = palette.sunset_orange, bold = true })
  hl("@markup.math",                { fg = palette.zima_blue_light })
  hl("@markup.environment",         { fg = palette.purple })

  -- ======================================================================
  -- Literals (diff embedded in markup)
  -- ======================================================================
  hl("@diff.plus",  { fg = palette.green })
  hl("@diff.minus", { fg = palette.red })
  hl("@diff.delta", { fg = palette.yellow })

  -- ======================================================================
  -- Modules / Namespace
  -- ======================================================================
  hl("@module",         { fg = palette.fg })
  hl("@module.builtin", { fg = palette.zima_blue })

  -- ======================================================================
  -- Namespace
  -- ======================================================================
  hl("@namespace", { fg = palette.zima_blue })

  -- ======================================================================
  -- Errors
  -- ======================================================================
  hl("@error", { fg = palette.red, bold = true })

  -- ======================================================================
  -- None group (catch-all for uncaptured text)
  -- ======================================================================
  hl("@none", {})
end

return M
