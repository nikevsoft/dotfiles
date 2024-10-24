-- vim: ts=4 sts=4 sw=4 et

-- See `:help vim.opt` or `:help option-list`

-- Show relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Allow mouse, useful for resizing splits and more
vim.opt.mouse = a

-- Disable this when your plugin can show the mode
vim.opt.showmode = true

-- Sync neovim and os clipboard
-- Schedule after 'UiEnter' because it can increase startup-time
vim.schedule(function()
    vim.opt.clipboard = 'unnamedplus'
end)

-- Wrapped lines are visually indented like the beginning of line
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case insensitive searching UNLESS \C or 
-- one or more appears in the search pattern
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Always show signcolumn
vim.opt.signcolumn = 'yes'

-- Faster update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300

-- Open split to the right or below
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Show tabs and spaces
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live 
-- nosplit = buffer, split = window
vim.opt.inccommand = "split"

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Cursor offset above and below cursor
vim.opt.scrolloff = 10
