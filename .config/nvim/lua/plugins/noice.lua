return { -- add message filters
  "folke/noice.nvim",
  opts = function(_, opts)
    opts.routes = {
      { -- filter write messages "xxxL, xxxB"
        filter = {
          event = "msg_show",
          find = "%dL",
        },
        opts = { skip = true },
      },
    }
  end,
}
