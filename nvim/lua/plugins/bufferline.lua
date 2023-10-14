local bufferline = require("bufferline")

return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      style_preset = bufferline.style_preset.minimal,
      themable = true,
      indicator = {
        -- icon = "▎", -- this should be omitted if indicator style is not 'icon'
        style = "none",
      },
      always_show_bufferline = true,
    },
  },
}
