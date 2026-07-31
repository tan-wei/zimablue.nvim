local h = require("tests.helpers")

local variants = {
  "zimablue",
  "zimablue-sunset",
  "zimablue-pool",
  "zimablue-volcano",
  "zimablue-storm",
}

local extras = {
  aerc = ".conf",
  aider = ".env",
  alacritty = ".toml",
  btop = ".theme",
  delta = ".gitconfig",
  eza = ".sh",
  fish = ".fish",
  fish_themes = ".theme",
  foot = ".ini",
  fzf = ".sh",
  ghostty = ".conf",
  gitui = ".ron",
  gnome_terminal = ".sh",
  helix = ".toml",
  ish = ".properties",
  kitty = ".conf",
  konsole = ".colorscheme",
  lazygit = ".yml",
  process_compose = ".yaml",
  qterminal = ".colorscheme",
  st = ".h",
  spotify_player = ".toml",
  terminator = ".conf",
  termux = ".properties",
  tilix = ".json",
  tmux = ".tmux",
  vim = ".vim",
  wezterm = ".lua",
  windows_terminal = ".json",
  xfceterm = ".theme",
  xresources = ".Xresources",
  yazi = ".toml",
  zathura = ".zathurarc",
  zellij = ".kdl",
}

describe("generated extras", function()
  for tool, extension in pairs(extras) do
    it("generates " .. tool .. " files for every variant", function()
      for _, variant in ipairs(variants) do
        local path = string.format("%s/extras/%s/%s%s", h.root, tool, variant, extension)
        assert(vim.fn.filereadable(path) == 1, "missing generated extra: " .. path)
      end
    end)
  end

  it("generates valid JSON for JSON extras", function()
    for _, tool in ipairs({ "tilix", "windows_terminal" }) do
      for _, variant in ipairs(variants) do
        local path = string.format("%s/extras/%s/%s.json", h.root, tool, variant)
        local content = table.concat(vim.fn.readfile(path), "\n")
        local ok, decoded = pcall(vim.fn.json_decode, content)
        assert(ok and type(decoded) == "table", "invalid JSON: " .. path)
      end
    end
  end)
end)
