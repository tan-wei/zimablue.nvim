<div align="center">

# zimablue.nvim

A dark Neovim colorscheme inspired by the iconic color from the *Love, Death & Robots* episode — **Zima Blue**.

The exact hex code for Zima Blue is <code style="background:#5BC2E7;color:#000;padding:2px 6px;border-radius:3px">#5BC2E7</code> (PANTONE 2985 C).

</div>

<table width="100%">
  <tr>
    <th>Zimablue Pool</th>
    <th>Zimablue Storm</th>
  </tr>
  <tr>
    <td width="50%">
      <img src="https://github.com/tan-wei/zimablue.nvim/raw/master/snapshots/zimablue-pool.png" />
    </td>
    <td width="50%">
      <img src="https://github.com/tan-wei/zimablue.nvim/raw/master/snapshots/zimablue-storm.png" />
    </td>
  </tr>
  <tr>
    <th>Zimablue Sunset</th>
    <th>Zimablue Volcano</th>
  </tr>
  <tr>
    <td width="50%">
      <img src="https://github.com/tan-wei/zimablue.nvim/raw/master/snapshots/zimablue-sunset.png" />
    </td>
    <td width="50%">
      <img src="https://github.com/tan-wei/zimablue.nvim/raw/master/snapshots/zimablue-volcano.png" />
    </td>
  </tr>
  <tr>
    <th>Zimablue</th>
  </tr>
  <tr>
    <td width="100%">
      <img src="https://github.com/tan-wei/zimablue.nvim/raw/master/snapshots/zimablue.png" />
    </td>
  </tr>
</table>


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
| <img src="https://placehold.co/15x15/5BC2E7/5BC2E7.png" alt="#5BC2E7" width="15" height="15" /> | `#5BC2E7` | Zima Blue (PANTONE 2985 C) — primary accent |
| <img src="https://placehold.co/15x15/16B8F3/16B8F3.png" alt="#16B8F3" width="15" height="15" /> | `#16B8F3` | Zima Blue Light — special methods, headings |
| <img src="https://placehold.co/15x15/28C5F4/28C5F4.png" alt="#28C5F4" width="15" height="15" /> | `#28C5F4` | Zima Blue Bold — operators, active selection |

### Backgrounds

| Color | Hex | Description |
|-------|-----|-------------|
| <img src="https://placehold.co/15x15/0A0F1A/0A0F1A.png" alt="#0A0F1A" width="15" height="15" /> | `#0A0F1A` | Deep space blue-black — main editor background |
| <img src="https://placehold.co/15x15/111827/111827.png" alt="#111827" width="15" height="15" /> | `#111827` | Sidebars, panels, float windows |
| <img src="https://placehold.co/15x15/182340/182340.png" alt="#182340" width="15" height="15" /> | `#182340` | Cursor line, hover, selection backgrounds |
| <img src="https://placehold.co/15x15/1E3555/1E3555.png" alt="#1E3555" width="15" height="15" /> | `#1E3555` | Search matches, visual selection |
| <img src="https://placehold.co/15x15/0D1423/0D1423.png" alt="#0D1423" width="15" height="15" /> | `#0D1423` | Line comment background |

### Foregrounds

| Color | Hex | Description |
|-------|-----|-------------|
| <img src="https://placehold.co/15x15/D4D6E0/D4D6E0.png" alt="#D4D6E0" width="15" height="15" /> | `#D4D6E0` | Primary text |
| <img src="https://placehold.co/15x15/8B92A8/8B92A8.png" alt="#8B92A8" width="15" height="15" /> | `#8B92A8` | Secondary / dim text |
| <img src="https://placehold.co/15x15/565E78/565E78.png" alt="#565E78" width="15" height="15" /> | `#565E78` | Inactive / placeholder text |

### Comments

| Color | Hex | Description |
|-------|-----|-------------|
| <img src="https://placehold.co/15x15/5A6380/5A6380.png" alt="#5A6380" width="15" height="15" /> | `#5A6380` | Muted blue-gray comments |

### UI Elements

| Color | Hex | Description |
|-------|-----|-------------|
| <img src="https://placehold.co/15x15/2E3852/2E3852.png" alt="#2E3852" width="15" height="15" /> | `#2E3852` | Non-text characters, line numbers, folds |
| <img src="https://placehold.co/15x15/1E2740/1E2740.png" alt="#1E2740" width="15" height="15" /> | `#1E2740` | Split borders, float borders |

### Syntax Colors

| Color | Hex | Description |
|-------|-----|-------------|
| <img src="https://placehold.co/15x15/61AFEF/61AFEF.png" alt="#61AFEF" width="15" height="15" /> | `#61AFEF` | Blue — keywords, control flow, types |
| <img src="https://placehold.co/15x15/56B6C2/56B6C2.png" alt="#56B6C2" width="15" height="15" /> | `#56B6C2` | Cyan — support types, special characters |
| <img src="https://placehold.co/15x15/98C379/98C379.png" alt="#98C379" width="15" height="15" /> | `#98C379` | Green — strings, additions, success |
| <img src="https://placehold.co/15x15/E5C07B/E5C07B.png" alt="#E5C07B" width="15" height="15" /> | `#E5C07B` | Yellow — numbers, modifications, warnings |
| <img src="https://placehold.co/15x15/D19A66/D19A66.png" alt="#D19A66" width="15" height="15" /> | `#D19A66` | Orange — debug, log levels, danger |
| <img src="https://placehold.co/15x15/E06C75/E06C75.png" alt="#E06C75" width="15" height="15" /> | `#E06C75` | Red — errors, deletions, diffs |
| <img src="https://placehold.co/15x15/C678DD/C678DD.png" alt="#C678DD" width="15" height="15" /> | `#C678DD` | Purple — preprocessor, special keywords |

### Scene-Inspired Accents

| Color | Hex | Description |
|-------|-----|-------------|
| <img src="https://placehold.co/15x15/4A90D9/4A90D9.png" alt="#4A90D9" width="15" height="15" /> | `#4A90D9` | Nebula Blue — secondary UI elements |
| <img src="https://placehold.co/15x15/7C5FBF/7C5FBF.png" alt="#7C5FBF" width="15" height="15" /> | `#7C5FBF` | Nebula Purple — space keywords |
| <img src="https://placehold.co/15x15/FF8C42/FF8C42.png" alt="#FF8C42" width="15" height="15" /> | `#FF8C42` | Sunset Orange — warm warnings |
| <img src="https://placehold.co/15x15/FF5370/FF5370.png" alt="#FF5370" width="15" height="15" /> | `#FF5370` | Lava Red — bright errors |
| <img src="https://placehold.co/15x15/5FD7A0/5FD7A0.png" alt="#5FD7A0" width="15" height="15" /> | `#5FD7A0` | Aurora Green — success / UI |
| <img src="https://placehold.co/15x15/2E3440/2E3440.png" alt="#2E3440" width="15" height="15" /> | `#2E3440` | Volcanic Gray — UI alternative |
| <img src="https://placehold.co/15x15/ECEFF4/ECEFF4.png" alt="#ECEFF4" width="15" height="15" /> | `#ECEFF4` | Star White — bright foreground emphasis |

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
    colors.line_nr_above = "#5C89B8"
    colors.line_nr_below = "#8A7258"
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

- [x] **Screenshots** — Add side-by-side screenshots of each variant (default, sunset, pool, volcano, storm) showing syntax highlighting in common languages
- [ ] **More plugin support** — Add highlight groups for community-requested plugins

## Credits

- Inspired by the *Love, Death & Robots* episode **Zima Blue**
- Architecture inspired by [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)