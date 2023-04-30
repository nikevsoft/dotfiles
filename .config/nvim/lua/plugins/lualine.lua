return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      section_separators = { left = "", right = "" },
      component_separators = { left = "", right = "" },
    },
    sections = {
      lualine_z = {
        function()
          return " " .. os.date("%I:%M %p")
        end,
      },
    },
  },
}
