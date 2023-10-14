return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      transparent_background = true,
      term_colors = true,
      highlight_overrides = {
        all = function()
          local active_bg = C.mantle
          -- local inactive_bg = C.base

          return {
            NotifyBackground = { bg = active_bg },
          }
        end,
      },
      integrations = {
        -- aerial = true,
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-frappe",
      -- colorscheme = "monokai-pro",
    },
  },
}
