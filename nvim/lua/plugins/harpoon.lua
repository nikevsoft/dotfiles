return {
  "ThePrimeagen/harpoon",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = true,
  keys = {
    {
      "ma",
      "<cmd>lua require('harpoon.mark').add_file()<cr>",
      desc = "[M][A]rk file with harpoon",
    },
    {
      "mn",
      "<cmd>lua require('harpoon.ui').nav_next()<cr>",
      desc = "Go to [N]ext harpoon mark",
    },
    {
      "mp",
      "<cmd>lua require('harpoon.ui').nav_prev()<cr>",
      desc = "Go to [P]revious harpoon mark",
    },
    {
      "ms",
      "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
      desc = "[S]how harpoon marks",
    },
  },
}
