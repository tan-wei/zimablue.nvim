local h = require("tests.helpers")
h.setup_rtp()

local schemes = {
  "zimablue",
  "zimablue-sunset",
  "zimablue-pool",
  "zimablue-volcano",
  "zimablue-storm",
}

for _, scheme in ipairs(schemes) do
  vim.cmd.colorscheme(scheme)
  assert(vim.g.colors_name == scheme, string.format("expected colors_name %s, got %s", scheme, vim.g.colors_name))
end

require("zimablue").setup({
  styles = {
    comments = { italic = false, bold = true },
    functions = { underline = true },
  },
  on_highlights = function(highlights, colors)
    highlights.Normal = { fg = colors.red, bg = colors.bg }
  end,
})

vim.cmd.colorscheme("zimablue")

local comment = vim.api.nvim_get_hl(0, { name = "@comment" })
assert(comment.bold == true, "styles.comments.bold was not applied")
assert(comment.italic ~= true, "styles.comments.italic=false was not applied")

local fn = vim.api.nvim_get_hl(0, { name = "@function" })
assert(fn.underline == true, "styles.functions.underline was not applied")

local normal = vim.api.nvim_get_hl(0, { name = "Normal" })
assert(normal.fg == tonumber("E06C75", 16), "on_highlights did not override Normal")

vim.cmd.quit()
