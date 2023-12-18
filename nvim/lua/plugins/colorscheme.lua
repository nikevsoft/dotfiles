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
            -- RGB hex value needs to be provided for transparency
            NotifyBackground = { bg = "#000000" },
            CursorLine = { bg = "NONE", fg = C.flamingo },
            CursorLineNr = { bg = "NONE", fg = C.flamingo },
          }
        end,
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
