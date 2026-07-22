-- MIT License Copyright (c) 2026 tan-wei
--
-- Zima Blue - Plugin-specific Highlight Groups
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
  -- Telescope
  -- ======================================================================
  hl("TelescopeNormal",           { fg = palette.fg, bg = palette.bg_alt })
  hl("TelescopeBorder",           { fg = palette.zima_blue, bg = palette.bg_alt })
  hl("TelescopeTitle",            { fg = palette.zima_blue_light, bg = palette.bg_alt })
  hl("TelescopePromptNormal",     { fg = palette.fg, bg = palette.bg })
  hl("TelescopePromptBorder",     { fg = palette.zima_blue, bg = palette.bg })
  hl("TelescopePromptTitle",      { fg = palette.bg, bg = palette.zima_blue })
  hl("TelescopeResultsNormal",    { fg = palette.fg, bg = palette.bg })
  hl("TelescopeResultsBorder",    { fg = palette.border, bg = palette.bg })
  hl("TelescopeResultsTitle",     { fg = palette.fg_dim, bg = palette.bg })
  hl("TelescopePreviewNormal",    { fg = palette.fg, bg = palette.bg })
  hl("TelescopePreviewBorder",    { fg = palette.border, bg = palette.bg })
  hl("TelescopePreviewTitle",     { fg = palette.fg_dim, bg = palette.bg })
  hl("TelescopeSelection",        { fg = palette.fg, bg = palette.bg_visual })
  hl("TelescopeSelectionCaret",   { fg = palette.zima_blue })
  hl("TelescopeMultiSelection",   { fg = palette.zima_blue_light })
  hl("TelescopeMatching",         { fg = palette.zima_blue_bold, bold = true })

  -- ======================================================================
  -- WhichKey / Which-Key
  -- ======================================================================
  hl("WhichKey",          { fg = palette.zima_blue, bold = bold() })
  hl("WhichKeyDesc",      { fg = palette.fg })
  hl("WhichKeySeperator", { fg = palette.comment })
  hl("WhichKeyGroup",     { fg = palette.blue })
  hl("WhichKeyNormal",    { bg = palette.bg_alt })
  hl("WhichKeyValue",     { fg = palette.fg_dim })

  -- ======================================================================
  -- NvimTree / Neo-tree
  -- ======================================================================
  hl("NvimTreeNormal",              { fg = palette.fg, bg = palette.bg_alt })
  hl("NvimTreeRootFolder",          { fg = palette.zima_blue, bold = bold() })
  hl("NvimTreeIndentMarker",        { fg = palette.border })
  hl("NvimTreeGitDirty",            { fg = palette.yellow })
  hl("NvimTreeGitNew",              { fg = palette.green })
  hl("NvimTreeGitDeleted",          { fg = palette.red })
  hl("NvimTreeGitStaged",           { fg = palette.blue })
  hl("NvimTreeGitMerge",            { fg = palette.orange })
  hl("NvimTreeGitRenamed",          { fg = palette.blue })
  hl("NvimTreeSpecialFile",         { fg = palette.zima_blue })
  hl("NvimTreeImageFile",           { fg = palette.fg_dim })
  hl("NvimTreeExecFile",            { fg = palette.green })
  hl("NvimTreeOpenedFile",          { fg = palette.fg })
  hl("NvimTreeWindowPicker",        { fg = palette.bg, bg = palette.zima_blue })

  -- Neo-tree
  hl("NeoTreeNormal",               { fg = palette.fg, bg = palette.bg_alt })
  hl("NeoTreeNormalNC",             { fg = palette.fg_dim, bg = palette.bg_alt })
  hl("NeoTreeRootName",             { fg = palette.zima_blue, bold = bold() })
  hl("NeoTreeIndentMarker",         { fg = palette.border })
  hl("NeoTreeGitAdded",             { fg = palette.green })
  hl("NeoTreeGitDeleted",           { fg = palette.red })
  hl("NeoTreeGitModified",          { fg = palette.yellow })
  hl("NeoTreeGitConflict",          { fg = palette.orange })
  hl("NeoTreeGitUntracked",         { fg = palette.fg_idle })
  hl("NeoTreeGitStaged",            { fg = palette.blue })
  hl("NeoTreeFloatTitle",           { fg = palette.zima_blue_light })
  hl("NeoTreeTitleBar",             { fg = palette.zima_blue })
  hl("NeoTreeCursorLine",           { bg = palette.bg_highlight })
  hl("NeoTreeSymbolicLinkTarget",   { fg = palette.blue, underline = true })
  hl("NeoTreeDimText",              { fg = palette.fg_idle })
  hl("NeoTreeFileName",             { fg = palette.fg })
  hl("NeoTreeTabActive",            { fg = palette.zima_blue, bg = palette.bg_highlight, bold = true })
  hl("NeoTreeTabInactive",          { fg = palette.fg_idle, bg = palette.bg })

  -- ======================================================================
  -- Git Signs / Gitsigns
  -- ======================================================================
  hl("GitSignsAdd",     { fg = palette.green })
  hl("GitSignsChange",  { fg = palette.yellow })
  hl("GitSignsDelete",  { fg = palette.red })
  hl("GitSignsAddNr",    { fg = palette.green })
  hl("GitSignsChangeNr", { fg = palette.yellow })
  hl("GitSignsDeleteNr", { fg = palette.red })

  -- ======================================================================
  -- Lazy.nvim
  -- ======================================================================
  hl("LazyNormal",    { fg = palette.fg, bg = palette.bg_alt })
  hl("LazyH1",        { fg = palette.zima_blue, bg = palette.bg_alt, bold = true })
  hl("LazyH2",        { fg = palette.blue, bg = palette.bg_alt, bold = true })
  hl("LazyButton",    { fg = palette.bg, bg = palette.zima_blue })
  hl("LazyButtonActive",  { fg = palette.bg, bg = palette.zima_blue_bold })
  hl("LazyReasonPlugin",  { fg = palette.comment })
  hl("LazyReasonImport",  { fg = palette.blue })
  hl("LazyReasonRuntime", { fg = palette.purple })

  -- ======================================================================
  -- Noice / Notify
  -- ======================================================================
  hl("NoiceNormal",          { fg = palette.fg, bg = palette.bg_alt })
  hl("NoiceBorder",          { fg = palette.zima_blue, bg = palette.bg_alt })
  hl("NoiceFormatTitle",     { fg = palette.zima_blue_light })

  hl("NotifyBackground",     { fg = palette.fg, bg = palette.bg })
  hl("NotifyDEBUGBody",      { fg = palette.fg })
  hl("NotifyDEBUGBorder",    { fg = palette.comment })
  hl("NotifyDEBUGIcon",      { fg = palette.comment })
  hl("NotifyDEBUGTitle",     { fg = palette.comment })
  hl("NotifyERRORBody",      { fg = palette.fg })
  hl("NotifyERRORBorder",    { fg = palette.red })
  hl("NotifyERRORIcon",      { fg = palette.red })
  hl("NotifyERRORTitle",     { fg = palette.red })
  hl("NotifyINFOBody",       { fg = palette.fg })
  hl("NotifyINFOBorder",     { fg = palette.blue })
  hl("NotifyINFOIcon",       { fg = palette.blue })
  hl("NotifyINFOTitle",      { fg = palette.blue })
  hl("NotifyTRACEBody",      { fg = palette.fg })
  hl("NotifyTRACEBorder",    { fg = palette.purple })
  hl("NotifyTRACEIcon",      { fg = palette.purple })
  hl("NotifyTRACETitle",     { fg = palette.purple })
  hl("NotifyWARNBody",       { fg = palette.fg })
  hl("NotifyWARNBorder",     { fg = palette.sunset_orange })
  hl("NotifyWARNIcon",       { fg = palette.sunset_orange })
  hl("NotifyWARNTitle",      { fg = palette.sunset_orange })

  -- ======================================================================
  -- DAP (Debugger)
  -- ======================================================================
  hl("DapBreakpoint",          { fg = palette.red })
  hl("DapLogPoint",            { fg = palette.zima_blue_light })
  hl("DapStopped",             { fg = palette.green })
  hl("DapBreakpointCondition", { fg = palette.orange })
  hl("DapStoppedLine",         { bg = palette.bg_highlight })

  -- ======================================================================
  -- Indent Blankline / IIndentGuide
  -- ======================================================================
  hl("IblIndent",               { fg = palette.bg_highlight })
  hl("IblScope",                { fg = palette.zima_blue })
  hl("IblWhitespace",           { fg = palette.nontext })
  hl("IndentBlanklineChar",        { fg = palette.bg_highlight, nocombine = true })
  hl("IndentBlanklineContextChar", { fg = palette.zima_blue, nocombine = true })

  -- ======================================================================
  -- Flash / Hop / Sneak (motion plugins)
  -- ======================================================================
  hl("FlashLabel",   { fg = palette.bg, bg = palette.zima_blue, bold = true })
  hl("FlashMatch",   { fg = palette.zima_blue_bold, bold = true })
  hl("FlashCursor",  { fg = palette.bg, bg = palette.zima_blue })
  hl("FlashBackdrop", { fg = palette.fg_idle })
  hl("HopNextKey",   { fg = palette.zima_blue_bold, bold = true })
  hl("HopNextKey1",  { fg = palette.zima_blue })
  hl("SneakLabel",   { fg = palette.bg, bg = palette.zima_blue, bold = true })
  hl("SneakMatch",   { fg = palette.zima_blue_bold, bold = true })
  hl("SneakScope",   { bg = palette.bg_highlight })

  -- ======================================================================
  -- Mini plugins
  -- ======================================================================
  hl("MiniStatuslineDevinfo",    { fg = palette.fg_dim, bg = palette.bg_alt })
  hl("MiniStatuslineFileinfo",   { fg = palette.fg, bg = palette.bg_alt })
  hl("MiniStatuslineFilename",   { fg = palette.zima_blue, bg = palette.bg_alt })
  hl("MiniIndentscopeSymbol",    { fg = palette.zima_blue })
  hl("MiniCursorword",           { bg = palette.bg_highlight })

  -- ======================================================================
  -- Treesitter context
  -- ======================================================================
  hl("TreesitterContext",              { bg = palette.bg_highlight })
  hl("TreesitterContextLineNumber",    { fg = palette.zima_blue })
  hl("TreesitterContextBottom",        { underline = true, sp = palette.border })

  -- ======================================================================
  -- Navic / Breadcrumb
  -- ======================================================================
  hl("NavicSeparator",    { fg = palette.comment })
  hl("NavicText",         { fg = palette.fg_dim })
  hl("NavicIconsFile",    { fg = palette.fg_dim })
  hl("NavicIconsModule",  { fg = palette.fg })

  -- ======================================================================
  -- Cmp / Blink (completion menu)
  -- ======================================================================
  hl("CmpItemAbbr",           { fg = palette.fg })
  hl("CmpItemAbbrMatch",      { fg = palette.zima_blue, bold = bold() })
  hl("CmpItemAbbrMatchFuzzy", { fg = palette.zima_blue_light })
  hl("CmpItemKind",           { fg = palette.zima_blue })
  hl("CmpItemKindClass",      { fg = palette.cyan })
  hl("CmpItemKindFunction",   { fg = palette.zima_blue })
  hl("CmpItemKindMethod",     { fg = palette.zima_blue })
  hl("CmpItemKindKeyword",    { fg = palette.purple })
  hl("CmpItemKindVariable",   { fg = palette.fg })
  hl("CmpItemKindConstant",   { fg = palette.yellow })
  hl("CmpItemKindSnippet",    { fg = palette.zima_blue_light })
  hl("CmpItemKindFile",       { fg = palette.fg_dim })
  hl("CmpDocumentation",        { fg = palette.fg, bg = palette.bg_alt })
  hl("CmpDocumentationBorder",  { fg = palette.zima_blue, bg = palette.bg_alt })
  hl("CmpGhostText",            { fg = palette.fg_idle })
  hl("CmpItemAbbrDeprecated",   { fg = palette.fg_idle, strikethrough = true })
  hl("CmpItemKindCodeium",      { fg = palette.aurora_green })
  hl("CmpItemKindCopilot",      { fg = palette.aurora_green })
  hl("CmpItemKindSupermaven",   { fg = palette.aurora_green })

  -- ======================================================================
  -- Blink.cmp
  -- ======================================================================
  hl("BlinkCmpMenu",               { fg = palette.fg, bg = palette.bg_alt })
  hl("BlinkCmpMenuSelection",      { fg = palette.bg, bg = palette.zima_blue, bold = true })
  hl("BlinkCmpScrollBarThumb",     { bg = palette.zima_blue })
  hl("BlinkCmpScrollBarGutter",    { bg = palette.bg_highlight })
  hl("BlinkCmpLabel",              { fg = palette.fg })
  hl("BlinkCmpLabelMatch",         { fg = palette.zima_blue, bold = true })
  hl("BlinkCmpLabelDetail",        { fg = palette.fg_dim })
  hl("BlinkCmpSource",             { fg = palette.comment })
  hl("BlinkCmpKind",               { fg = palette.zima_blue })
  hl("BlinkCmpKindClass",          { fg = palette.cyan })
  hl("BlinkCmpKindFunction",       { fg = palette.zima_blue })
  hl("BlinkCmpKindMethod",         { fg = palette.zima_blue })
  hl("BlinkCmpKindKeyword",        { fg = palette.purple })
  hl("BlinkCmpKindVariable",       { fg = palette.fg })
  hl("BlinkCmpKindConstant",       { fg = palette.yellow })

  -- ======================================================================
  -- bufferline.nvim
  -- ======================================================================
  hl("BufferLineIndicatorSelected", { fg = palette.zima_blue })

  -- ======================================================================
  -- trouble.nvim
  -- ======================================================================
  hl("TroubleText",   { fg = palette.fg_dim })
  hl("TroubleCount",  { fg = palette.purple, bg = palette.bg_highlight })
  hl("TroubleNormal", { fg = palette.fg, bg = palette.bg_alt })

  -- ======================================================================
  -- alpha-nvim
  -- ======================================================================
  hl("AlphaShortcut",    { fg = palette.sunset_orange })
  hl("AlphaHeader",      { fg = palette.zima_blue })
  hl("AlphaHeaderLabel", { fg = palette.sunset_orange })
  hl("AlphaFooter",      { fg = palette.zima_blue_light })
  hl("AlphaButtons",     { fg = palette.cyan })

  -- ======================================================================
  -- neogit
  -- ======================================================================
  hl("NeogitBranch",          { fg = palette.zima_blue, bold = true })
  hl("NeogitRemote",          { fg = palette.purple })
  hl("NeogitHunkHeader",      { bg = palette.bg_highlight })
  hl("NeogitHunkHeaderHighlight",      { bg = palette.bg_highlight, bold = true })
  hl("NeogitDiffContextHighlight",      { bg = palette.bg })
  hl("NeogitDiffAddHighlight",          { bg = palette.bg_highlight, fg = palette.green })
  hl("NeogitDiffDeleteHighlight",       { bg = palette.bg_highlight, fg = palette.red })

  -- ======================================================================
  -- neotest
  -- ======================================================================
  hl("NeotestAdapterName",  { fg = palette.zima_blue, bold = true })
  hl("NeotestDir",          { fg = palette.fg_dim })
  hl("NeotestFile",         { fg = palette.fg_dim })
  hl("NeotestFocused",      { fg = palette.zima_blue, bold = true })
  hl("NeotestPassed",       { fg = palette.green })
  hl("NeotestFailed",       { fg = palette.red })
  hl("NeotestRunning",      { fg = palette.sunset_orange })
  hl("NeotestSkipped",      { fg = palette.comment })
  hl("NeotestTest",         { fg = palette.fg })
  hl("NeotestNamespace",    { fg = palette.fg_dim })

  -- ======================================================================
  -- HARPOON
  -- ======================================================================
  hl("HarpoonWindow",        { bg = palette.bg_alt })
  hl("HarpoonBorder",        { fg = palette.zima_blue, bg = palette.bg_alt })
  hl("HarpoonTitle",         { fg = palette.zima_blue_light })

  -- ======================================================================
  -- rainbow-delimiters.nvim
  -- ======================================================================
  hl("RainbowDelimiterRed",    { fg = palette.lava_red })
  hl("RainbowDelimiterYellow", { fg = palette.yellow })
  hl("RainbowDelimiterBlue",   { fg = palette.blue })
  hl("RainbowDelimiterOrange", { fg = palette.sunset_orange })
  hl("RainbowDelimiterGreen",  { fg = palette.aurora_green })
  hl("RainbowDelimiterViolet", { fg = palette.purple })
  hl("RainbowDelimiterCyan",   { fg = palette.cyan })

  -- ======================================================================
  -- fzf-lua
  -- ======================================================================
  hl("FzfLuaNormal",         { fg = palette.fg, bg = palette.bg_alt })
  hl("FzfLuaBorder",         { fg = palette.zima_blue, bg = palette.bg_alt })
  hl("FzfLuaTitle",          { fg = palette.zima_blue_light, bg = palette.bg_alt })
  hl("FzfLuaPrompt",         { fg = palette.fg, bg = palette.bg })
  hl("FzfLuaFzfQuery",       { fg = palette.fg })

  -- ======================================================================
  -- aerial.nvim
  -- ======================================================================
  hl("AerialNormal",         { fg = palette.fg, bg = palette.bg_alt })
  hl("AerialLine",           { bg = palette.bg_highlight })
  hl("AerialGuide",          { fg = palette.border })

  -- ======================================================================
  -- vim-illuminate
  -- ======================================================================
  hl("IlluminatedWordText",  { bg = palette.bg_highlight })
  hl("IlluminatedWordRead",  { bg = palette.bg_highlight })
  hl("IlluminatedWordWrite", { bg = palette.bg_highlight })

  -- ======================================================================
  -- yanky.nvim
  -- ======================================================================
  hl("YankyPut",             { bg = palette.bg_highlight })
  hl("YankyYanked",          { bg = palette.bg_highlight })

  -- ======================================================================
  -- nvim-scrollbar
  -- ======================================================================
  hl("ScrollbarHandle",       { bg = palette.border })
  hl("ScrollbarCursor",       { bg = palette.zima_blue })
  hl("ScrollbarSearch",       { bg = palette.zima_blue })
  hl("ScrollbarError",        { bg = palette.red })
  hl("ScrollbarWarn",         { bg = palette.sunset_orange })
  hl("ScrollbarInfo",         { bg = palette.blue })
  hl("ScrollbarHint",         { bg = palette.zima_blue_light })

  -- ======================================================================
  -- octo.nvim
  -- ======================================================================
  hl("OctoIssueTitle",        { fg = palette.zima_blue, bold = true })
  hl("OctoIssueOpen",         { fg = palette.green })
  hl("OctoIssueClosed",       { fg = palette.purple })
  hl("OctoIssueMerged",       { fg = palette.purple })

  -- ======================================================================
  -- grug-far.nvim
  -- ======================================================================
  hl("GrugFarResults",        { fg = palette.fg })
  hl("GrugFarMatch",          { fg = palette.zima_blue, bold = true })
  hl("GrugFarChanged",        { fg = palette.yellow })
  hl("GrugFarAdded",          { fg = palette.green })
  hl("GrugFarRemoved",        { fg = palette.red })

  -- ======================================================================
  -- render-markdown.nvim (extra details)
  -- ======================================================================
  hl("RenderMarkdownH1",     { fg = palette.zima_blue, bold = true })
  hl("RenderMarkdownH2",     { fg = palette.blue, bold = true })
  hl("RenderMarkdownH3",     { fg = palette.purple, bold = true })
  hl("RenderMarkdownH4",     { fg = palette.cyan, bold = true })
  hl("RenderMarkdownH5",     { fg = palette.green, bold = true })
  hl("RenderMarkdownH6",     { fg = palette.fg_dim, bold = true })
  hl("RenderMarkdownCode",   { fg = palette.green, bg = palette.bg })
  hl("RenderMarkdownBullet",     { fg = palette.sunset_orange })
  hl("RenderMarkdownDash",       { fg = palette.sunset_orange })
  hl("RenderMarkdownTableHead",  { fg = palette.lava_red })
  hl("RenderMarkdownTableRow",   { fg = palette.sunset_orange })
  hl("RenderMarkdownCodeInline", { fg = palette.green, bg = palette.bg_highlight })
  for i, color in ipairs({ palette.zima_blue, palette.blue, palette.purple, palette.cyan, palette.green, palette.fg_dim }) do
    hl("RenderMarkdownH" .. i .. "Bg", { bg = palette.bg_highlight })
    hl("RenderMarkdownH" .. i .. "Fg", { fg = color, bold = true })
  end

  -- ======================================================================
  -- Noice.nvim (cmdline details)
  -- ======================================================================
  hl("NoiceCmdlineIconInput",          { fg = palette.sunset_orange })
  hl("NoiceCmdlineIconLua",            { fg = palette.zima_blue_light })
  hl("NoiceCmdlinePopupBorderInput",   { fg = palette.sunset_orange })
  hl("NoiceCmdlinePopupBorderLua",     { fg = palette.zima_blue_light })
  hl("NoiceCmdlinePopupTitleInput",    { fg = palette.sunset_orange })
  hl("NoiceCmdlinePopupTitleLua",      { fg = palette.zima_blue_light })
  hl("NoiceCompletionItemKindDefault", { fg = palette.fg_dim })

  -- ======================================================================
  -- Snacks.nvim (detailed)
  -- ======================================================================
  hl("SnacksNormal",        { fg = palette.fg, bg = palette.bg_alt })
  hl("SnacksBorder",        { fg = palette.zima_blue, bg = palette.bg_alt })
  hl("SnacksTitle",         { fg = palette.zima_blue_light })
  hl("SnacksNotifierDebug",       { fg = palette.fg })
  hl("SnacksNotifierBorderDebug", { fg = palette.comment })
  hl("SnacksNotifierIconDebug",   { fg = palette.comment })
  hl("SnacksNotifierTitleDebug",  { fg = palette.comment })
  hl("SnacksNotifierError",       { fg = palette.fg })
  hl("SnacksNotifierBorderError", { fg = palette.red })
  hl("SnacksNotifierIconError",   { fg = palette.red })
  hl("SnacksNotifierTitleError",  { fg = palette.red })
  hl("SnacksNotifierInfo",        { fg = palette.fg })
  hl("SnacksNotifierBorderInfo",  { fg = palette.blue })
  hl("SnacksNotifierIconInfo",    { fg = palette.blue })
  hl("SnacksNotifierTitleInfo",   { fg = palette.blue })
  hl("SnacksNotifierWarn",        { fg = palette.fg })
  hl("SnacksNotifierBorderWarn",  { fg = palette.sunset_orange })
  hl("SnacksNotifierIconWarn",    { fg = palette.sunset_orange })
  hl("SnacksNotifierTitleWarn",   { fg = palette.sunset_orange })
  hl("SnacksNotifierTrace",       { fg = palette.fg })
  hl("SnacksNotifierBorderTrace", { fg = palette.purple })
  hl("SnacksNotifierIconTrace",   { fg = palette.purple })
  hl("SnacksNotifierTitleTrace",  { fg = palette.purple })
  hl("SnacksDashboardDesc",       { fg = palette.cyan })
  hl("SnacksDashboardFooter",     { fg = palette.zima_blue_light })
  hl("SnacksDashboardHeader",     { fg = palette.zima_blue })
  hl("SnacksDashboardIcon",       { fg = palette.zima_blue_light })
  hl("SnacksDashboardKey",        { fg = palette.sunset_orange })
  hl("SnacksDashboardSpecial",    { fg = palette.purple })
  hl("SnacksIndent",              { fg = palette.bg_highlight, nocombine = true })
  hl("SnacksIndentScope",         { fg = palette.zima_blue, nocombine = true })

  -- ======================================================================
  -- TOGGLE TERM / Floating Terminal
  -- ======================================================================
  hl("ToggleTermNormal",    { fg = palette.fg, bg = palette.bg })
  hl("ToggleTermBorder",    { fg = palette.zima_blue })
  hl("ToggleTermTitle",     { fg = palette.zima_blue_light })

  -- ======================================================================
  -- SNIPRUN (inline code runner)
  -- ======================================================================
  hl("SnipRunVirtualTextOk",  { fg = palette.green })
  hl("SnipRunVirtualTextErr", { fg = palette.red })

  -- ======================================================================
  -- OVERSEER (task runner)
  -- ======================================================================
  hl("OverseerNormal",    { fg = palette.fg, bg = palette.bg_alt })
  hl("OverseerBorder",    { fg = palette.zima_blue, bg = palette.bg_alt })
  hl("OverseerTaskAdapt", { fg = palette.fg })
  hl("OverseerTaskBuild", { fg = palette.blue })
  hl("OverseerTaskClean", { fg = palette.orange })
  hl("OverseerTaskRun",   { fg = palette.green })

  -- ======================================================================
  -- DASHBOARD / Alpha / Startup
  -- ======================================================================
  hl("DashboardHeader",  { fg = palette.zima_blue })
  hl("DashboardIcon",    { fg = palette.zima_blue_light })
  hl("DashboardDesc",    { fg = palette.fg_dim })
  hl("DashboardKey",     { fg = palette.zima_blue, bold = true })
  hl("DashboardFooter",  { fg = palette.comment })
end

return M