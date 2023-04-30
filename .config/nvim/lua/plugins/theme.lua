return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      integrations = {
        leap = true,
        notify = true,
        noice = true,
        mini = true,
        symbols_outline = true,
        neotree = true,
        telescope = true,
        which_key = true,
        lsp_trouble = true,
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
