local h = require("tests.helpers")
local palettes = require("zimablue.colors")

local variants = {
  { scheme = "zimablue", key = "default" },
  { scheme = "zimablue-sunset", key = "sunset" },
  { scheme = "zimablue-pool", key = "pool" },
  { scheme = "zimablue-volcano", key = "volcano" },
  { scheme = "zimablue-storm", key = "storm" },
}

describe("colorscheme loading", function()
  before_each(function()
    h.reset()
  end)

  for _, variant in ipairs(variants) do
    it("loads " .. variant.scheme, function()
      vim.o.background = "light"
      vim.cmd.colorscheme(variant.scheme)

      assert(vim.o.background == "dark", "expected background to be dark")
      assert(vim.g.colors_name == variant.scheme, "expected colors_name to be " .. variant.scheme)

      local normal = h.hl("Normal")
      assert(normal.fg == h.hex(palettes[variant.key].fg), "Normal foreground does not match palette")
      assert(normal.bg == h.hex(palettes[variant.key].bg), "Normal background does not match palette")
    end)
  end

  it("uses setup variant when loading the default entrypoint", function()
    require("zimablue").setup({ variant = "pool" })
    vim.cmd.colorscheme("zimablue")

    assert(vim.g.colors_name == "zimablue-pool", "expected setup variant to select zimablue-pool")
    local normal = h.hl("Normal")
    assert(normal.bg == h.hex(palettes.pool.bg), "Normal background does not match pool palette")
  end)

  it("falls back to default for unknown variants", function()
    require("zimablue").setup({ variant = "missing" })

    assert(vim.g.colors_name == "zimablue-missing", "unknown variant should keep the requested name for visibility")
    local normal = h.hl("Normal")
    assert(normal.bg == h.hex(palettes.default.bg), "unknown variant should use default palette")
  end)
end)
