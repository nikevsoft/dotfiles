return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      transparent_background = true,
      highlight_overrides = {
        all = function()
          C = require("catppuccin.palettes").get_palette("frappe")
          return {
            NotifyBackground = { bg = C.base },
            NormalFloat = { bg = C.base },
            FloatShadow = { bg = C.base },
            FloatShadowThrough = { bg = C.base },
          }
        end,
      },
      integrations = {
        aerial = true,
        harpoon = true,
        navic = {
          enabled = true,
          custom_bg = "NONE",
        },
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-frappe",
    },
  },
}
