local bufferline = require("bufferline")

return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      style_preset = bufferline.style_preset.minimal,
      themable = true,
      always_show_bufferline = true,
    },
  },
}
