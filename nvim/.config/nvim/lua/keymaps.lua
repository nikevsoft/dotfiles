-- vim: ts=4 sts=4 sw=4 et

-- See `:help vim.keymap.set()`

-- Clear highlights on search
vim.keymap.set('n', '<Esc>', '<Cmd>nohlsearch<CR>')

-- See `:help lua-guide-autocommands`

-- Highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when copying text',
    group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})
