return {
  "rcarriga/nvim-notify",
  opts = {
    timeout = 1000,
    max_height = function()
      return math.floor(vim.o.lines * 0.75)
    end,
    max_width = function()
      return math.floor(vim.o.columns * 0.75)
    end,
    on_open = function(win)
      vim.api.nvim_win_set_option(win, "winblend", 30)
      vim.api.nvim_win_set_config(win, { zindex = 100 })
    end,
  },
}
