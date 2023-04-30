return {
  "s1n7ax/nvim-window-picker",
  config = function()
    require("window-picker").setup({
      selection_chars = "AOEUIDHTNS",
      fg_color = "#c6d0f5",
      other_win_hl_color = "#292c3c",
    })
  end,
}
