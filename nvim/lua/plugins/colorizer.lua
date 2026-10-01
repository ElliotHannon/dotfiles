return {
  {
    "NvChad/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({
        filetypes = {
          "*", -- Enable for all filetypes
          css = { css = true },
          html = { css = true },
          latex = { 
            rgb_fn = true, -- Enable rgb() functions
            hsl_fn = true, -- Enable hsl() functions
          },
        },
        user_default_options = {
          RGB = true,      -- #RGB hex codes
          RRGGBB = true,   -- #RRGGBB hex codes
          names = true,    -- "Blue", "Red", etc.
          RRGGBBAA = true, -- #RRGGBBAA hex codes
          rgb_fn = true,   -- rgb() functions
          hsl_fn = true,   -- hsl() functions
          css = true,      -- Enable all CSS features
          css_fn = true,   -- Enable all CSS functions
          mode = "background", -- Display as background color
        },
      })
    end,
  },
}
