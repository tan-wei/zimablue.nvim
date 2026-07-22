<div align="center">

# zimablue.nvim

A dark Neovim colorscheme inspired by the iconic color from the *Love, Death & Robots* episode — **Zima Blue**.

The exact hex code for Zima Blue is <code style="background:#5BC2E7;color:#000;padding:2px 6px;border-radius:3px">#5BC2E7</code> (PANTONE 2985 C).

</div>

## Inspiration

In the episode *Zima Blue*, the mysterious artist Zima reveals his origin as a small pool-cleaning robot, and the blue tile that defined his existence becomes the symbol of his journey — from simple function to cosmic art, and back again.

This colorscheme captures that atmosphere: a deep, dark void of space punctuated by that unmistakable cyan-blue glow. Not harsh, not clinical — just a calm, focused coding environment with the Zima Blue as its soul.

## Features

- **5 scene-inspired variants** — from deep space to volcanic eruptions
- Full Treesitter support (`@keyword`, `@function`, `@string`, etc.)
- LSP semantic token highlighting (`@lsp.type.*`, `@lsp.mod.*`)
- Plugin support: Telescope, WhichKey, Neo-tree/NvimTree, Gitsigns, Lazy, Noice, DAP, Blink/Cmp, and more
- Terminal ANSI 16-color support (per variant)
- Configurable transparent background, dim inactive windows, italics, bold, and style overrides
- `on_colors` and `on_highlights` callbacks for complete customization

## Variants

Each variant is a distinct color palette inspired by a scene from the episode.
Use them directly via `:colorscheme` — no setup required.

| Colorscheme | Scene | Vibe |
|-------------|-------|------|
| `zimablue` | Deep space (default) | Dark blue-black void, classic Zima Blue |
| `zimablue-sunset` | Golden horizon | Warm orange-gold tones against dusk |
| `zimablue-pool` | The tiled swimming pool | Teal water, pale ceramic reflections |
| `zimablue-volcano` | Volcanic eruption | Lava reds, molten oranges, black rock |
| `zimablue-storm` | Abyssal ocean depths | Moody teals, deep grays, foam white |

```lua
vim.cmd.colorscheme("zimablue-sunset")
```

## Palette

### Zima Blue Core

| Color | Hex | Description |
|-------|-----|-------------|
| <code style="background:#5BC2E7;color:#000">&nbsp;&nbsp;&nbsp;&nbsp;</code> | `#5BC2E7` | Zima Blue (PANTONE 2985 C) — primary accent |
| <code style="background:#16B8F3;color:#000">&nbsp;&nbsp;&nbsp;&nbsp;</code> | `#16B8F3` | Zima Blue Light — special methods, headings |
| <code style="background:#28C5F4;color:#000">&nbsp;&nbsp;&nbsp;&nbsp;</code> | `#28C5F4` | Zima Blue Bold — operators, active selection |

### Backgrounds

| Color | Hex | Description |
|-------|-----|-------------|
| <code style="background:#0A0F1A;color:#fff">&nbsp;&nbsp;&nbsp;&nbsp;</code> | `#0A0F1A` | Deep space blue-black — main editor background |
| <code style="background:#111827;color:#fff">&nbsp;&nbsp;&nbsp;&nbsp;</code> | `#111827` | Sidebars, panels, float windows |
| <code style="background:#182340;color:#fff">&nbsp;&nbsp;&nbsp;&nbsp;</code> | `#182340` | Cursor line, hover, selection backgrounds |
| <code style="background:#1E3555;color:#fff">&nbsp;&nbsp;&nbsp;&nbsp;</code> | `#1E3555` | Search matches, visual selection |
| <code style="background:#0D1423;color:#fff">&nbsp;&nbsp;&nbsp;&nbsp;</code> | `#0D1423` | Line comment background |

### Foregrounds

| Color | Hex | Description |
|-------|-----|-------------|
| <code style="background:#D4D6E0;color:#000">&nbsp;&nbsp;&nbsp;&nbsp;</code> | `#D4D6E0` | Primary text |
| <code style="background:#8B92A8;color:#000">&nbsp;&nbsp;&nbsp;&nbsp;</code> | `#8B92A8` | Secondary / dim text |
| <code style="background:#565E78;color:#000">&nbsp;&nbsp;&nbsp;&nbsp;</code> | `#565E78` | Inactive / placeholder text |

### Comments

| Color | Hex | Description |
|-------|-----|-------------|
| <code style="background:#5A6380;color:#fff">&nbsp;&nbsp;&nbsp;&nbsp;</code> | `#5A6380` | Muted blue-gray comments |

### UI Elements

| Color | Hex | Description |
|-------|-----|-------------|
| <code style="background:#2E3852;color:#fff">&nbsp;&nbsp;&nbsp;&nbsp;</code> | `#2E3852` | Non-text characters, line numbers, folds |
| <code style="background:#1E2740;color:#fff">&nbsp;&nbsp;&nbsp;&nbsp;</code> | `#1E2740` | Split borders, float borders |

### Syntax Colors

| Color | Hex | Description |
|-------|-----|-------------|
| <code style="background:#61AFEF;color:#000">&nbsp;&nbsp;&nbsp;&nbsp;</code> | `#61AFEF` | Blue — keywords, control flow, types |
| <code style="background:#56B6C2;color:#000">&nbsp;&nbsp;&nbsp;&nbsp;</code> | `#56B6C2` | Cyan — support types, special characters |
| <code style="background:#98C379;color:#000">&nbsp;&nbsp;&nbsp;&nbsp;</code> | `#98C379` | Green — strings, additions, success |
| <code style="background:#E5C07B;color:#000">&nbsp;&nbsp;&nbsp;&nbsp;</code> | `#E5C07B` | Yellow — numbers, modifications, warnings |
| <code style="background:#D19A66;color:#000">&nbsp;&nbsp;&nbsp;&nbsp;</code> | `#D19A66` | Orange — debug, log levels, danger |
| <code style="background:#E06C75;color:#000">&nbsp;&nbsp;&nbsp;&nbsp;</code> | `#E06C75` | Red — errors, deletions, diffs |
| <code style="background:#C678DD;color:#000">&nbsp;&nbsp;&nbsp;&nbsp;</code> | `#C678DD` | Purple — preprocessor, special keywords |

### Scene-Inspired Accents

| Color | Hex | Description |
|-------|-----|-------------|
| <code style="background:#4A90D9;color:#000">&nbsp;&nbsp;&nbsp;&nbsp;</code> | `#4A90D9` | Nebula Blue — secondary UI elements |
| <code style="background:#7C5FBF;color:#000">&nbsp;&nbsp;&nbsp;&nbsp;</code> | `#7C5FBF` | Nebula Purple — space keywords |
| <code style="background:#FF8C42;color:#000">&nbsp;&nbsp;&nbsp;&nbsp;</code> | `#FF8C42` | Sunset Orange — warm warnings |
| <code style="background:#FF5370;color:#000">&nbsp;&nbsp;&nbsp;&nbsp;</code> | `#FF5370` | Lava Red — bright errors |
| <code style="background:#5FD7A0;color:#000">&nbsp;&nbsp;&nbsp;&nbsp;</code> | `#5FD7A0` | Aurora Green — success / UI |
| <code style="background:#2E3440;color:#fff">&nbsp;&nbsp;&nbsp;&nbsp;</code> | `#2E3440` | Volcanic Gray — UI alternative |
| <code style="background:#ECEFF4;color:#000">&nbsp;&nbsp;&nbsp;&nbsp;</code> | `#ECEFF4` | Star White — bright foreground emphasis |

## Installation

### lazy.nvim

```lua
{ "tan-wei/zimablue.nvim", lazy = true }
```

Then add the colorscheme to your theme selector or set it directly:

```lua
vim.cmd.colorscheme("zimablue")
```

## Configuration

### Basic

```lua
require("zimablue").setup({
  transparent = false,    -- Enable transparent background
  terminal_colors = true, -- Enable terminal ANSI colors
  dim_inactive = false,   -- Dim inactive windows
  italic      = true,     -- Enable italics for comments
  bold        = true,     -- Enable bold for some keywords
})

vim.cmd.colorscheme("zimablue")
```

### Variant via setup

You can also set the variant from your config using the `variant` option:

```lua
require("zimablue").setup({
  variant = "sunset",
  transparent = false,
})

vim.cmd.colorscheme("zimablue")
```

### Style Overrides

Fine-tune syntax group styles (italic, bold, underline, etc.):

```lua
require("zimablue").setup({
  styles = {
    comments  = { italic = true },
    keywords  = { italic = true },
    functions = { bold = true },
    variables = {},
  },
})
```

### Callbacks

Fully customize any color or highlight group:

```lua
require("zimablue").setup({
  on_colors = function(colors)
    -- Override any color in the palette
    colors.zima_blue = "#16B8F3"
  end,
  on_highlights = function(highlights, colors)
    -- Set or override any highlight group
    highlights.Normal = { fg = colors.fg, bg = colors.bg }
  end,
})
```

## License

MIT

## TODO

- [ ] **Screenshots** — Add side-by-side screenshots of each variant (default, sunset, pool, volcano, storm) showing syntax highlighting in common languages
- [ ] **More plugin support** — Add highlight groups for community-requested plugins

## Credits

- Inspired by the *Love, Death & Robots* episode **Zima Blue**
- Architecture inspired by [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)