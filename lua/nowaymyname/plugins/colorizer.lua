return {
  "NvChad/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup({
      user_default_options = {
        names = true,         -- Highlight color names like "Blue"
        RGB = true,           -- #RGB hex codes
        RRGGBB = true,        -- #RRGGBB hex codes
        RRGGBBAA = true,      -- #RRGGBBAA hex codes
        rgb_fn = true,        -- CSS rgb() and rgba() functions
        hsl_fn = true,        -- CSS hsl() and hsla() functions
        css = true,           -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = true,        -- Enable all CSS *functions*: rgb_fn, hsl_fn
        mode = "virtualtext", -- Set the display mode: 'foreground', 'background', or 'virtualtext'
      },
    })
  end,
}
