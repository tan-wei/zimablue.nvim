local h = require("tests.helpers")
local palettes = require("zimablue.colors")

describe("highlight configuration", function()
  before_each(function()
    h.reset()
  end)

  it("sets terminal colors from the active palette", function()
    vim.cmd.colorscheme("zimablue-volcano")
    local terminal = palettes.volcano.terminal

    assert(vim.g.terminal_color_0 == terminal.black, "terminal_color_0 does not match")
    assert(vim.g.terminal_color_1 == terminal.red, "terminal_color_1 does not match")
    assert(vim.g.terminal_color_4 == terminal.blue, "terminal_color_4 does not match")
    assert(vim.g.terminal_color_15 == terminal.bright_white, "terminal_color_15 does not match")
  end)

  it("respects terminal_colors=false", function()
    require("zimablue").setup({ terminal_colors = false })

    assert(vim.g.terminal_color_0 == nil, "terminal colors should not be set")
    assert(vim.g.terminal_color_15 == nil, "bright terminal colors should not be set")
  end)

  it("applies styles to core Treesitter groups", function()
    require("zimablue").setup({
      styles = {
        comments = { italic = false, bold = true },
        keywords = { underline = true },
        functions = { bold = false, italic = true },
        variables = { strikethrough = true },
      },
    })

    local comment = h.hl("@comment")
    assert(comment.bold == true, "comment style did not apply")
    assert(comment.italic ~= true, "comment italic override did not apply")

    assert(h.hl("@keyword").underline == true, "keyword style did not apply")
    assert(h.hl("@function").italic == true, "function style did not apply")
    assert(h.hl("@function").bold ~= true, "function bold override did not apply")
    assert(h.hl("@variable").strikethrough == true, "variable style did not apply")
  end)

  it("runs color and highlight callbacks in order", function()
    require("zimablue").setup({
      on_colors = function(colors)
        colors.zima_blue = "#123456"
      end,
      on_highlights = function(highlights, colors)
        assert(highlights.Normal ~= nil, "on_highlights should receive generated groups")
        assert(highlights.CursorLineNr.fg == "#123456", "on_colors should run before highlight generation")
        highlights.Normal = { fg = colors.zima_blue, bg = colors.bg }
      end,
    })

    local normal = h.hl("Normal")
    assert(normal.fg == h.hex("#123456"), "on_highlights override did not apply")
  end)

  it("defines representative plugin highlight groups", function()
    vim.cmd.colorscheme("zimablue")

    local groups = {
      "AerialNormal", "ALEErrorSign", "AlphaHeader", "BlinkCmpMenu", "BufferLineIndicatorSelected",
      "BufferCurrent", "CmpItemAbbrMatch", "CodeiumSuggestion", "CopilotSuggestion", "DashboardHeader",
      "DapBreakpoint", "FlashLabel", "FzfLuaNormal", "GitGutterAdd", "GitSignsAdd", "GlyphPalette1",
      "GrugFarMatch", "Headline1", "HopNextKey", "IblIndent", "IndentLine", "LazyNormal", "LeapLabelPrimary",
      "LspSagaBorderTitle", "MiniStatuslineFilename", "MiniPickNormal", "NavicSeparator", "NeoTreeNormal",
      "NeogitBranch", "NeotestPassed", "NoiceNormal", "NotifyERRORBorder", "NvimTreeNormal", "OctoIssueTitle",
      "OverseerNormal", "RainbowDelimiterRed", "RenderMarkdownH1", "ScrollbarHandle", "SidekickNormal",
      "SnacksNormal", "SneakLabel", "SnipRunVirtualTextOk", "SupermavenSuggestion", "TelescopeNormal",
      "ToggleTermNormal", "TroubleNormal", "TreesitterContext", "VimwikiHeader1", "WhichKey", "YankyPut",
      "IlluminatedWordText",
    }

    for _, group in ipairs(groups) do
      h.assert_hl(group)
    end
  end)
end)
