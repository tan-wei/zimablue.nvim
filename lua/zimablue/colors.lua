-- MIT License Copyright (c) 2026 tan-wei
--
-- Zima Blue Color Palette & Variants
-- ===================================================================
-- Core:  #5BC2E7  (PANTONE 2985 C)  - The iconic Zima Blue
-- Light: #16B8F3                    - Brighter variant
-- Bold:  #28C5F4                    - Bolder variant
--
-- Variants inspired by scenes from Love, Death & Robots "Zima Blue":
--   default       : Deep space - the classic dark blue-black theme
--   sunset        : Warm golden-orange horizon tones
--   pool          : The iconic pool scene - teal water, pale tiles
--   volcano       : Volcanic eruption - lava reds and molten oranges
--   storm         : Stormy ocean depths - moody teals and grays

local M = {}

-- ===================================================================
-- Default: "Zima Blue — Deep Space"
-- The classic dark theme. Endless void punctuated by Zima Blue.
-- ===================================================================
M["default"] = {
  bg              = "#070B15",
  bg_alt          = "#111827",
  bg_highlight    = "#182340",
  bg_search       = "#1E3555",
  bg_visual       = "#1E3555",

  fg              = "#D4D6E0",
  fg_dim          = "#7A82A0",
  fg_idle         = "#565E78",

  comment         = "#5A6380",
  comment_bg      = "#0D1423",

  nontext         = "#2E3852",
  border          = "#24304D",

  zima_blue       = "#5BC2E7",
  zima_blue_light = "#16B8F3",
  zima_blue_bold  = "#28C5F4",

  blue            = "#61AFEF",
  cyan            = "#56B6C2",
  green           = "#98C379",
  yellow          = "#E5C07B",
  orange          = "#D19A66",
  red             = "#E06C75",
  purple          = "#C678DD",

  -- Scene-inspired accent colors
  nebula_blue     = "#4A90D9",
  nebula_purple   = "#7C5FBF",
  sunset_orange   = "#FF8C42",
  lava_red        = "#FF5370",
  aurora_green    = "#5FD7A0",
  volcanic_gray   = "#2E3440",
  star_white      = "#ECEFF4",

  terminal = {
    black         = "#070B15", red    = "#E06C75", green  = "#98C379", yellow = "#E5C07B",
    blue          = "#5BC2E7", magenta= "#C678DD", cyan   = "#56B6C2", white  = "#D4D6E0",
    bright_black  = "#565E78", bright_red="#BE5046", bright_green="#7EC97E", bright_yellow="#D4A04A",
    bright_blue   = "#28C5F4", bright_magenta="#D47DDA", bright_cyan="#74BFC7", bright_white="#E8EAF0",
  },
}

-- ===================================================================
-- Sunset: "The Last Horizon"
-- Warm orange-golden tones against a deep dusk background.
-- The sun bleeds into the void.
-- ===================================================================
M["sunset"] = {
  bg              = "#0F0B08",
  bg_alt          = "#1A1410",
  bg_highlight    = "#2A1E15",
  bg_search       = "#3D2A1A",
  bg_visual       = "#3D2A1A",

  fg              = "#E0D6CC",
  fg_dim          = "#9A8A7A",
  fg_idle         = "#6A5E52",

  comment         = "#7A6A5A",
  comment_bg      = "#140F0C",

  nontext         = "#3A2E22",
  border          = "#3A2818",

  zima_blue       = "#6BC8F0",
  zima_blue_light = "#4AC0F5",
  zima_blue_bold  = "#3DB8EE",

  blue            = "#7CB8E8",
  cyan            = "#6AA8B8",
  green           = "#A8C888",
  yellow          = "#F0C060",
  orange          = "#FF9955",
  red             = "#E07060",
  purple          = "#C890D0",

  nebula_blue     = "#5A80B8",
  nebula_purple   = "#8860A0",
  sunset_orange   = "#FFAA55",
  lava_red        = "#FF6655",
  aurora_green    = "#70D8A8",
  volcanic_gray   = "#3A2C20",
  star_white      = "#F0E8DC",

  terminal = {
    black             = "#0F0B08", red   = "#E07060", green  = "#A8C888", yellow = "#F0C060",
    blue              = "#6BC8F0", magenta = "#C890D0", cyan    = "#6AA8B8", white  = "#E0D6CC",
    bright_black      = "#6A5E52", bright_red    = "#CC5040", bright_green  = "#88B868", bright_yellow = "#D8A840",
    bright_blue       = "#3DB8EE", bright_magenta = "#B070B8", bright_cyan   = "#5098A8", bright_white = "#F0E8DC",
  },
}

-- ===================================================================
-- Pool: "The Tiled Abyss"
-- Inspired by Zima's iconic swimming pool — teal water, pale ceramic
-- tiles, and reflections on a calm surface.
-- ===================================================================
M["pool"] = {
  bg              = "#060E12",
  bg_alt          = "#0E1A1E",
  bg_highlight    = "#16282E",
  bg_search       = "#1E363E",
  bg_visual       = "#1E363E",

  fg              = "#D0DEE0",
  fg_dim          = "#7A9298",
  fg_idle         = "#506268",

  comment         = "#5A7278",
  comment_bg      = "#0A1418",

  nontext         = "#284048",
  border          = "#1E3238",

  zima_blue       = "#50C8E8",
  zima_blue_light = "#30C4EA",
  zima_blue_bold  = "#28B8DC",

  blue            = "#58A8D0",
  cyan            = "#4EC0C8",
  green           = "#82D0A0",
  yellow          = "#D8C878",
  orange          = "#C8945A",
  red             = "#D06C78",
  purple          = "#A890C0",

  nebula_blue     = "#4080A8",
  nebula_purple   = "#7870A0",
  sunset_orange   = "#E8A060",
  lava_red        = "#E86070",
  aurora_green    = "#58D0A8",
  volcanic_gray   = "#1E2E34",
  star_white      = "#E8F0F0",

  terminal = {
    black             = "#060E12", red   = "#D06C78", green  = "#82D0A0", yellow = "#D8C878",
    blue              = "#50C8E8", magenta = "#A890C0", cyan    = "#4EC0C8", white  = "#D0DEE0",
    bright_black      = "#506268", bright_red    = "#B85060", bright_green  = "#66B888", bright_yellow = "#C0B060",
    bright_blue       = "#28B8DC", bright_magenta = "#9070A8", bright_cyan   = "#38A0B0", bright_white = "#E8F0F0",
  },
}

-- ===================================================================
-- Volcano: "Molten Core"
-- The volcano/eruption scene — black rock, lava flows, magma glow.
-- Reds, oranges, and yellows dominate.
-- ===================================================================
M["volcano"] = {
  bg              = "#0E0808",
  bg_alt          = "#1A0E0E",
  bg_highlight    = "#2A1412",
  bg_search       = "#3A1E14",
  bg_visual       = "#3A1E14",

  fg              = "#E0D0C8",
  fg_dim          = "#9A7A72",
  fg_idle         = "#68504A",

  comment         = "#7A6058",
  comment_bg      = "#120A0A",

  nontext         = "#3A2018",
  border          = "#3A1A10",

  zima_blue       = "#60B8E0",
  zima_blue_light = "#48B4E8",
  zima_blue_bold  = "#38AAD8",

  blue            = "#6898C0",
  cyan            = "#509898",
  green           = "#88A868",
  yellow          = "#E8B040",
  orange          = "#FF8844",
  red             = "#FF5544",
  purple          = "#B080A0",

  nebula_blue     = "#4870A0",
  nebula_purple   = "#886080",
  sunset_orange   = "#FF9955",
  lava_red        = "#FF4422",
  aurora_green    = "#60C880",
  volcanic_gray   = "#2A1810",
  star_white      = "#F0E0D0",

  terminal = {
    black             = "#0E0808", red   = "#FF5544", green  = "#88A868", yellow = "#E8B040",
    blue              = "#60B8E0", magenta = "#B080A0", cyan    = "#509898", white  = "#E0D0C8",
    bright_black      = "#68504A", bright_red    = "#DD3322", bright_green  = "#689048", bright_yellow = "#C89028",
    bright_blue       = "#38AAD8", bright_magenta = "#906880", bright_cyan   = "#388080", bright_white = "#F0E0D0",
  },
}

-- ===================================================================
-- Storm: "Abyssal Depths"
-- Stormy ocean — dark teals, deep grays, foam white.
-- Zima Blue becomes a dimmer beacon in the murk.
-- ===================================================================
M["storm"] = {
  bg              = "#080C10",
  bg_alt          = "#10161C",
  bg_highlight    = "#18222C",
  bg_search       = "#202E3C",
  bg_visual       = "#202E3C",

  fg              = "#C8D0D8",
  fg_dim          = "#6A7888",
  fg_idle         = "#485260",

  comment         = "#505E6E",
  comment_bg      = "#0A1016",

  nontext         = "#24303C",
  border          = "#1A2634",

  zima_blue       = "#4AA8C8",
  zima_blue_light = "#38AAC8",
  zima_blue_bold  = "#309EB8",

  blue            = "#5088B0",
  cyan            = "#489EA8",
  green           = "#78A880",
  yellow          = "#B8A870",
  orange          = "#B08058",
  red             = "#B86868",
  purple          = "#8A7898",

  nebula_blue     = "#386888",
  nebula_purple   = "#685C80",
  sunset_orange   = "#D09050",
  lava_red        = "#D06060",
  aurora_green    = "#50B088",
  volcanic_gray   = "#1C2834",
  star_white      = "#D8E0E8",

  terminal = {
    black             = "#080C10", red   = "#B86868", green  = "#78A880", yellow = "#B8A870",
    blue              = "#4AA8C8", magenta = "#8A7898", cyan    = "#489EA8", white  = "#C8D0D8",
    bright_black      = "#485260", bright_red    = "#984848", bright_green  = "#588860", bright_yellow = "#988858",
    bright_blue       = "#309EB8", bright_magenta = "#6A5878", bright_cyan   = "#308088", bright_white = "#D8E0E8",
  },
}

return M