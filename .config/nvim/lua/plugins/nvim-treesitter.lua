return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- https://github.com/LazyVim/LazyVim/pull/521
    opts.ignore_install = { "help" }

    if type(opts.ensure_installed) == "table" then
      vim.list_extend(opts.ensure_installed, { "json", "json5", "jsonc", "vimdoc", "typescript", "tsx" })
    end
  end,
}
