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
