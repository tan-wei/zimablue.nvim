-- MIT License Copyright (c) 2026 tan-wei
--
-- Zima Blue - Editor & UI Highlight Groups
-- ===================================================================

local M = {}

---@param palette ZimaBluePalette
---@param hl fun(group: string, val: table)
---@param fg fun(group: string, val: table)
---@param bold fun(): boolean
---@param italic fun(): boolean
function M.setup(palette, hl, fg, bold, italic, styles, config)
  config = config or { dim_inactive = false, transparent = false }
  local dim_bg = config.dim_inactive and palette.bg_alt or palette.bg

  -- ======================================================================
  -- Base groups
  -- ======================================================================
  hl("Normal",       { fg = palette.fg, bg = config.transparent and "NONE" or palette.bg })
  hl("NormalNC",     { fg = palette.fg, bg = config.transparent and "NONE" or dim_bg })
  hl("NormalSB",     { fg = palette.fg_dim, bg = palette.bg_alt })
  hl("NormalFloat",  { fg = palette.fg, bg = palette.bg_alt })
  hl("FloatBorder",  { fg = palette.zima_blue, bg = palette.bg_alt })
  hl("FloatTitle",   { fg = palette.zima_blue_light, bg = palette.bg_alt })

  hl("EndOfBuffer",  { fg = palette.bg })
  hl("NonText",      { fg = palette.nontext })
  hl("Whitespace",   { fg = palette.nontext })

  hl("ColorColumn",  { bg = palette.bg_highlight })
  hl("CursorColumn", { bg = palette.bg_highlight })
  hl("CursorLine",   { bg = palette.bg_highlight })
  hl("CursorLineNr", { fg = palette.zima_blue, bg = palette.bg_highlight, bold = true })
  hl("LineNr",       { fg = palette.nontext })
  hl("LineNrAbove",  { fg = palette.nontext })
  hl("LineNrBelow",  { fg = palette.nontext })
  hl("Cursor",       { bg = palette.zima_blue_bold })
  hl("lCursor",      { bg = palette.zima_blue_bold })
  hl("CursorIM",     { bg = palette.zima_blue_bold })

  hl("Visual",       { bg = palette.bg_visual })
  hl("VisualNOS",    { bg = palette.bg_visual })

  hl("Search",       { fg = palette.bg, bg = palette.zima_blue, bold = true })
  hl("CurSearch",    { fg = palette.bg, bg = palette.zima_blue_bold })
  hl("IncSearch",    { fg = palette.bg, bg = palette.zima_blue_light })
  hl("Substitute",   { fg = palette.bg, bg = palette.sunset_orange })

  hl("QuickFixLine", { bg = palette.bg_highlight })
  hl("Conceal",      { fg = palette.comment })

  hl("MatchParen",   { fg = palette.zima_blue_bold, bold = true, underline = true })
  hl("ModeMsg",      { fg = palette.zima_blue, bold = bold() })

  -- ======================================================================
  -- Splits / Status line / Tab line
  -- ======================================================================
  hl("WinSeparator", { fg = palette.border })
  hl("VertSplit",    { fg = palette.border })
  hl("WinBar",       { fg = palette.fg, bg = palette.bg_alt })
  hl("WinBarNC",     { fg = palette.fg_idle, bg = palette.bg })

  hl("StatusLine",       { fg = palette.fg, bg = palette.bg_alt })
  hl("StatusLineNC",     { fg = palette.fg_idle, bg = palette.bg })
  hl("StatusLineTerm",   { fg = palette.fg, bg = palette.bg_alt })
  hl("StatusLineTermNC", { fg = palette.fg_idle, bg = palette.bg })

  hl("TabLine",     { fg = palette.fg_idle, bg = palette.bg })
  hl("TabLineSel",  { fg = palette.bg, bg = palette.zima_blue, bold = true })
  hl("TabLineFill", { bg = palette.bg })

  -- ======================================================================
  -- Messages / Titles / Info
  -- ======================================================================
  hl("MsgArea",      { fg = palette.fg })
  hl("MoreMsg",      { fg = palette.zima_blue, bold = bold() })
  hl("WarningMsg",   { fg = palette.orange })
  hl("ErrorMsg",     { fg = palette.red, bold = true })
  hl("Question",     { fg = palette.zima_blue })
  hl("Title",        { fg = palette.zima_blue_light, bold = bold() })

  -- ======================================================================
  -- Menus / Pmenu
  -- ======================================================================
  hl("Pmenu",         { fg = palette.fg, bg = palette.bg_alt })
  hl("PmenuMatch",    { fg = palette.zima_blue, bg = palette.bg_alt })
  hl("PmenuSel",      { fg = palette.bg, bg = palette.zima_blue, bold = true })
  hl("PmenuMatchSel", { fg = palette.zima_blue_bold, bg = palette.bg_highlight })
  hl("PmenuKind",     { fg = palette.zima_blue })
  hl("PmenuKindSel",  { fg = palette.bg })
  hl("PmenuExtra",    { fg = palette.fg_dim })
  hl("PmenuExtraSel", { fg = palette.bg })
  hl("PmenuSbar",     { bg = palette.bg_highlight })
  hl("PmenuThumb",    { bg = palette.zima_blue })

  hl("WildMenu",      { fg = palette.bg, bg = palette.zima_blue, bold = true })

  -- ======================================================================
  -- Diagnostics
  -- ======================================================================
  hl("DiagnosticHint",          { fg = palette.zima_blue_light })
  hl("DiagnosticInfo",          { fg = palette.blue })
  hl("DiagnosticWarn",          { fg = palette.orange })
  hl("DiagnosticError",         { fg = palette.red })
  hl("DiagnosticOk",            { fg = palette.green })
  hl("DiagnosticDeprecated",    { fg = palette.orange, strikethrough = true })
  hl("DiagnosticUnnecessary",   { fg = palette.fg_idle })

  hl("DiagnosticUnderlineHint",  { undercurl = true, sp = palette.zima_blue_light })
  hl("DiagnosticUnderlineInfo",  { undercurl = true, sp = palette.blue })
  hl("DiagnosticUnderlineWarn",  { undercurl = true, sp = palette.orange })
  hl("DiagnosticUnderlineError", { undercurl = true, sp = palette.red })
  hl("DiagnosticUnderlineOk",    { undercurl = true, sp = palette.green })

  hl("DiagnosticVirtualTextHint",  { fg = palette.zima_blue_light, bg = palette.bg_highlight })
  hl("DiagnosticVirtualTextInfo",  { fg = palette.blue, bg = palette.bg_highlight })
  hl("DiagnosticVirtualTextWarn",  { fg = palette.orange, bg = palette.bg_highlight })
  hl("DiagnosticVirtualTextError", { fg = palette.red, bg = palette.bg_highlight })

  hl("DiagnosticFloatingHint",  { fg = palette.zima_blue_light })
  hl("DiagnosticFloatingInfo",  { fg = palette.blue })
  hl("DiagnosticFloatingWarn",  { fg = palette.orange })
  hl("DiagnosticFloatingError", { fg = palette.red })

  hl("DiagnosticSignHint",  { fg = palette.zima_blue_light })
  hl("DiagnosticSignInfo",  { fg = palette.blue })
  hl("DiagnosticSignWarn",  { fg = palette.orange })
  hl("DiagnosticSignError", { fg = palette.red })

  -- ======================================================================
  -- Diff
  -- ======================================================================
  hl("DiffAdd",    { fg = palette.green, bg = palette.bg_highlight })
  hl("DiffChange", { fg = palette.yellow, bg = palette.bg_highlight })
  hl("DiffDelete", { fg = palette.red, bg = palette.bg_highlight })
  hl("DiffText",   { fg = palette.zima_blue, bg = palette.bg_highlight })

  -- ======================================================================
  -- Folds
  -- ======================================================================
  hl("Folded",  { fg = palette.comment, bg = palette.bg })
  hl("FoldColumn", { fg = palette.nontext })

  -- ======================================================================
  -- Signs
  -- ======================================================================
  hl("SignColumn", { bg = config.transparent and "NONE" or palette.bg })

  -- ======================================================================
  -- Spell
  -- ======================================================================
  hl("SpellBad",   { undercurl = true, sp = palette.red })
  hl("SpellCap",   { undercurl = true, sp = palette.orange })
  hl("SpellLocal", { undercurl = true, sp = palette.blue })
  hl("SpellRare",  { undercurl = true, sp = palette.purple })

  -- ======================================================================
  -- Miscellaneous UI
  -- ======================================================================
  hl("Directory",     { fg = palette.zima_blue })
  hl("SpecialKey",    { fg = palette.nontext })
  hl("@text.uri",     { fg = palette.blue, underline = true })
  hl("@text.reference", { fg = palette.yellow })

  -- Tree-sitter locale / misc
  hl("@text.todo",     { fg = palette.bg, bg = palette.zima_blue_light, bold = true })
  hl("@text.note",     { fg = palette.zima_blue_light, bold = true })
  hl("@text.warning",  { fg = palette.orange })
  hl("@text.danger",   { fg = palette.red })
  hl("Error",          { fg = palette.red })
  hl("Todo",           { fg = palette.bg, bg = palette.zima_blue_light, bold = true })

  -- ======================================================================
  -- LSP References (read / write / text)
  -- ======================================================================
  hl("LspReferenceText",  { bg = palette.bg_highlight })
  hl("LspReferenceRead",  { bg = palette.bg_highlight, fg = palette.zima_blue_light })
  hl("LspReferenceWrite", { bg = palette.bg_highlight, fg = palette.zima_blue_bold })
  hl("LspCodeLens",       { fg = palette.comment })
  hl("LspSignatureActiveParameter", { bold = true, bg = palette.bg_highlight })
  hl("LspInfoBorder",     { fg = palette.zima_blue, bg = palette.bg_alt })

  -- ======================================================================
  -- Health
  -- ======================================================================
  hl("HealthError",   { fg = palette.red })
  hl("HealthSuccess", { fg = palette.aurora_green })
  hl("HealthWarning", { fg = palette.sunset_orange })

  -- ======================================================================
  -- diff file highlights
  -- ======================================================================
  hl("diffAdded",     { bg = palette.bg_highlight, fg = palette.green })
  hl("diffRemoved",   { bg = palette.bg_highlight, fg = palette.red })
  hl("diffChanged",   { bg = palette.bg_highlight, fg = palette.yellow })
  hl("diffFile",      { fg = palette.zima_blue })
  hl("diffLine",      { fg = palette.comment })
  hl("diffNewFile",   { fg = palette.green })
  hl("diffOldFile",   { fg = palette.red })
  hl("diffIndexLine", { fg = palette.purple })

  -- ======================================================================
  -- Inline / Hover / Info
  -- ======================================================================
  hl("InclineNormal",    { fg = palette.fg, bg = palette.bg_alt })
  hl("InclineNormalNC",  { fg = palette.fg_dim, bg = palette.bg })
  hl("HoverBorder",      { fg = palette.zima_blue })
  hl("HoverNormal",      { fg = palette.fg, bg = palette.bg_alt })

  -- ======================================================================
  -- Extra Neovim groups
  -- ======================================================================
  hl("Bold",       { bold = true })
  hl("Italic",     { italic = true })
  hl("Underlined", { underline = true })
  hl("NoiceCursor",{})

  -- ======================================================================
  -- Syntax fallback groups (for older plugins / no treesitter)
  -- ======================================================================
  hl("Normal",     { fg = palette.fg })

  -- Keywords / Statements
  hl("Statement",  { fg = palette.blue, bold = bold() })
  hl("Keyword",    { fg = palette.purple })
  hl("Conditional",{ fg = palette.purple })
  hl("Repeat",     { fg = palette.purple })
  hl("Label",      { fg = palette.blue })
  hl("Operator",   { fg = palette.zima_blue })
  hl("Exception",  { fg = palette.red })

  -- Types
  hl("Type",         { fg = palette.cyan })
  hl("Structure",    { fg = palette.cyan })
  hl("Typedef",      { fg = palette.cyan })

  -- Identifiers
  hl("Identifier",  { fg = palette.fg })
  hl("Function",    { fg = palette.zima_blue })

  -- Constants
  hl("Constant",    { fg = palette.yellow })
  hl("String",      { fg = palette.green })
  hl("Character",   { fg = palette.green })
  hl("Number",      { fg = palette.yellow })
  hl("Boolean",     { fg = palette.yellow })
  hl("Float",       { fg = palette.yellow })

  -- Preprocessor
  hl("PreProc",   { fg = palette.purple })
  hl("Include",   { fg = palette.blue })
  hl("Define",    { fg = palette.purple })
  hl("Macro",     { fg = palette.purple })
  hl("PreCondit", { fg = palette.orange })

  -- Special
  hl("Special",        { fg = palette.zima_blue_light })
  hl("SpecialChar",    { fg = palette.zima_blue })
  hl("Delimiter",      { fg = palette.fg_dim })
  hl("SpecialComment", { fg = palette.comment })
  hl("Debug",          { fg = palette.orange })

  -- Comments
  hl("Comment", { fg = palette.comment, italic = italic() })

  -- Tags
  hl("Tag", { fg = palette.zima_blue })

  -- Ignore / Noise
  hl("Ignore", { fg = palette.nontext })
end

return M