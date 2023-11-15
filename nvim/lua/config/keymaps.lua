-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")

-- better escape
vim.keymap.set("i", "jj", "<esc>")
vim.keymap.set("i", "jk", "<esc>")

-- override lazyvim mappings with vim-tmux-navigation mappings
vim.keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>", { desc = "Go to left window", remap = true })
vim.keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>", { desc = "Go to lower window", remap = true })
vim.keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>", { desc = "Go to upper window", remap = true })
vim.keymap.set("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>", { desc = "Go to right window", remap = true })
vim.keymap.set("n", "<C-\\>", "<cmd>TmuxNavigatePrevious<cr>", { desc = "Go to previous window", remap = true })

-- lazydocker
-- stylua: ignore
vim.keymap.set("n", "<leader>gd", function() Util.terminal({ "lazydocker" }, { esc_esc = false, ctrl_hjkl = false }) end, { desc = "Lazydocker" })
