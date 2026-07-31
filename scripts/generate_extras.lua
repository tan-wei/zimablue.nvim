local source = debug.getinfo(1, "S").source:sub(2)
local root = vim.fn.fnamemodify(source, ":p:h:h")
package.path = root .. "/lua/?.lua;" .. root .. "/lua/?/init.lua;" .. package.path

local palettes = require("zimablue.colors")

local variants = {
  { key = "default", name = "zimablue" },
  { key = "sunset", name = "zimablue-sunset" },
  { key = "pool", name = "zimablue-pool" },
  { key = "volcano", name = "zimablue-volcano" },
  { key = "storm", name = "zimablue-storm" },
}

local check = vim.tbl_contains(vim.v.argv, "--check")
local failed = false

local tools = {
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

local function lines(text)
  return vim.split(text:gsub("\n$", ""), "\n", { plain = true })
end

local function write(path, text)
  local full_path = root .. "/" .. path
  if check then
    local existing = vim.fn.filereadable(full_path) == 1 and table.concat(vim.fn.readfile(full_path), "\n") .. "\n" or nil
    if existing ~= text then
      vim.api.nvim_err_writeln(path .. " is out of date")
      failed = true
    end
    return
  end

  vim.fn.mkdir(vim.fn.fnamemodify(full_path, ":h"), "p")
  vim.fn.writefile(lines(text), full_path)
end

local function ansi(palette)
  local term = palette.terminal
  return {
    term.black,
    term.red,
    term.green,
    term.yellow,
    term.blue,
    term.magenta,
    term.cyan,
    term.white,
  }, {
    term.bright_black,
    term.bright_red,
    term.bright_green,
    term.bright_yellow,
    term.bright_blue,
    term.bright_magenta,
    term.bright_cyan,
    term.bright_white,
  }
end

local function strip(hex)
  return hex:gsub("#", "")
end

local function rgb(hex)
  local r, g, b = strip(hex):match("(..)(..)(..)")
  return string.format("%d;%d;%d", tonumber(r, 16), tonumber(g, 16), tonumber(b, 16))
end

local function palette_line(values, prefix, separator)
  local out = {}
  for index, color in ipairs(values) do
    table.insert(out, string.format(prefix, index - 1, color))
  end
  return table.concat(out, separator or "\n")
end

local function shell(name, palette, key)
  return string.format(
    [[# %s - generated from zimablue.nvim
export ZIMABLUE_THEME="%s"
export ZIMABLUE_BG="%s"
export ZIMABLUE_FG="%s"
export ZIMABLUE_ACCENT="%s"
export ZIMABLUE_RED="%s"
export ZIMABLUE_GREEN="%s"
export ZIMABLUE_YELLOW="%s"
export ZIMABLUE_BLUE="%s"
]],
    name,
    key,
    palette.bg,
    palette.fg,
    palette.zima_blue,
    palette.red,
    palette.green,
    palette.yellow,
    palette.blue
  )
end

local function ini(name, palette, key)
  local normal, bright = ansi(palette)
  return string.format(
    [[# %s - generated from zimablue.nvim
[colors]
name=%s
foreground=%s
background=%s
cursor=%s
selection_foreground=%s
selection_background=%s
%s
%s
]],
    name,
    key,
    palette.fg,
    palette.bg,
    palette.zima_blue,
    palette.bg,
    palette.bg_visual,
    palette_line(normal, "color%d=%s"),
    palette_line(bright, "bright%d=%s")
  )
end

local function toml(name, palette, key)
  local normal, bright = ansi(palette)
  return string.format(
    [[# %s - generated from zimablue.nvim
name = "%s"
foreground = "%s"
background = "%s"
cursor = "%s"
selection_foreground = "%s"
selection_background = "%s"
ansi = ["%s"]
brights = ["%s"]
]],
    name,
    key,
    palette.fg,
    palette.bg,
    palette.zima_blue,
    palette.bg,
    palette.bg_visual,
    table.concat(normal, '", "'),
    table.concat(bright, '", "')
  )
end

local function json(name, palette)
  local normal, bright = ansi(palette)
  local parts = {
    string.format('"name": "%s"', name),
    string.format('"background": "%s"', palette.bg),
    string.format('"foreground": "%s"', palette.fg),
    string.format('"cursorColor": "%s"', palette.zima_blue),
    string.format('"selectionBackground": "%s"', palette.bg_visual),
    string.format('"black": "%s"', normal[1]),
    string.format('"red": "%s"', normal[2]),
    string.format('"green": "%s"', normal[3]),
    string.format('"yellow": "%s"', normal[4]),
    string.format('"blue": "%s"', normal[5]),
    string.format('"purple": "%s"', normal[6]),
    string.format('"cyan": "%s"', normal[7]),
    string.format('"white": "%s"', normal[8]),
    string.format('"brightBlack": "%s"', bright[1]),
    string.format('"brightRed": "%s"', bright[2]),
    string.format('"brightGreen": "%s"', bright[3]),
    string.format('"brightYellow": "%s"', bright[4]),
    string.format('"brightBlue": "%s"', bright[5]),
    string.format('"brightPurple": "%s"', bright[6]),
    string.format('"brightCyan": "%s"', bright[7]),
    string.format('"brightWhite": "%s"', bright[8]),
  }
  return "{" .. table.concat(parts, ", ") .. "}\n"
end

local function extra(tool, name, palette, key)
  local normal, bright = ansi(palette)
  if tool == "kitty" then
    return ini(name, palette, key):gsub("%[colors%]\n", "")
  elseif tool == "alacritty" then
    return string.format(
      [[# %s - generated from zimablue.nvim
[colors.primary]
background = "%s"
foreground = "%s"

[colors.cursor]
text = "%s"
cursor = "%s"

[colors.selection]
text = "%s"
background = "%s"

[colors.normal]
black = "%s"
red = "%s"
green = "%s"
yellow = "%s"
blue = "%s"
magenta = "%s"
cyan = "%s"
white = "%s"

[colors.bright]
black = "%s"
red = "%s"
green = "%s"
yellow = "%s"
blue = "%s"
magenta = "%s"
cyan = "%s"
white = "%s"
]],
      name,
      palette.bg,
      palette.fg,
      palette.bg,
      palette.zima_blue,
      palette.bg,
      palette.bg_visual,
      normal[1],
      normal[2],
      normal[3],
      normal[4],
      normal[5],
      normal[6],
      normal[7],
      normal[8],
      bright[1],
      bright[2],
      bright[3],
      bright[4],
      bright[5],
      bright[6],
      bright[7],
      bright[8]
    )
  elseif tool == "wezterm" then
    return string.format(
      [[-- %s - generated from zimablue.nvim
return {
  foreground = "%s",
  background = "%s",
  cursor_bg = "%s",
  cursor_fg = "%s",
  selection_bg = "%s",
  ansi = { "%s" },
  brights = { "%s" },
}
]],
      name,
      palette.fg,
      palette.bg,
      palette.zima_blue,
      palette.bg,
      palette.bg_visual,
      table.concat(normal, '", "'),
      table.concat(bright, '", "')
    )
  elseif tool == "windows_terminal" or tool == "tilix" then
    return json(name, palette)
  elseif tool == "eza" then
    return string.format(
      [[# %s - generated from zimablue.nvim
export EZA_COLORS="di=38;2;%s:fi=38;2;%s:ln=38;2;%s:ex=38;2;%s:*.md=38;2;%s:*.lua=38;2;%s:*.json=38;2;%s"
]],
      name,
      rgb(palette.zima_blue),
      rgb(palette.fg),
      rgb(palette.blue),
      rgb(palette.green),
      rgb(palette.zima_blue_light),
      rgb(palette.blue),
      rgb(palette.green)
    )
  elseif tool == "tmux" then
    return string.format(
      [[# %s - generated from zimablue.nvim
set -g status-style "bg=%s,fg=%s"
set -g message-style "bg=%s,fg=%s"
set -g pane-border-style "fg=%s"
set -g pane-active-border-style "fg=%s"
]],
      name,
      palette.bg_alt,
      palette.fg,
      palette.bg_highlight,
      palette.fg,
      palette.border,
      palette.zima_blue
    )
  elseif tool == "vim" then
    return string.format(
      [[" %s - generated from zimablue.nvim
set background=dark
hi clear
let g:colors_name = "%s"
hi Normal guifg=%s guibg=%s
hi Comment guifg=%s gui=italic
hi Function guifg=%s
hi String guifg=%s
hi Error guifg=%s
]],
      name,
      name,
      palette.fg,
      palette.bg,
      palette.comment,
      palette.zima_blue,
      palette.green,
      palette.red
    )
  elseif tool == "zellij" then
    return string.format(
      [[// %s - generated from zimablue.nvim
themes {
  %s {
    fg "%s"
    bg "%s"
    red "%s"
    green "%s"
    yellow "%s"
    blue "%s"
    magenta "%s"
    cyan "%s"
  }
}
]],
      name,
      name:gsub("%-", "_"),
      palette.fg,
      palette.bg,
      palette.red,
      palette.green,
      palette.yellow,
      palette.blue,
      palette.purple,
      palette.cyan
    )
  elseif tool == "fish" or tool == "fish_themes" then
    return string.format(
      [[# %s - generated from zimablue.nvim
set -g fish_color_normal %s
set -g fish_color_command %s
set -g fish_color_quote %s
set -g fish_color_error %s
set -g fish_color_comment %s
]],
      name,
      strip(palette.fg),
      strip(palette.zima_blue),
      strip(palette.green),
      strip(palette.red),
      strip(palette.comment)
    )
  elseif tool == "lazygit" or tool == "process_compose" then
    return string.format(
      [[# %s - generated from zimablue.nvim
gui:
  theme:
    activeBorderColor: ['%s', bold]
    inactiveBorderColor: ['%s']
    selectedLineBgColor: ['%s']
    defaultFgColor: ['%s']
]],
      name,
      palette.zima_blue,
      palette.border,
      palette.bg_highlight,
      palette.fg
    )
  else
    return ini(name, palette, key)
  end
end

for _, variant in ipairs(variants) do
  local palette = palettes[variant.key]
  for tool, extension in pairs(tools) do
    write("extras/" .. tool .. "/" .. variant.name .. extension, extra(tool, variant.name, palette, variant.key))
  end
end

if failed then
  os.exit(1)
end
