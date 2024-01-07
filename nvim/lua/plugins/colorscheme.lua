return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      transparent_background = true,
      custom_highlights = function(colors)
        return {
          NotifyBackground = { bg = "#000000" }, -- notify only takes this coloring
          CursorLine = { bg = colors.none },
          CursorLineNr = { bg = colors.none },
          FloatShadow = { bg = colors.none },
          FloatShadowThrough = { bg = colors.none },
        }
      end,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-frappe",
    },
  },
}
