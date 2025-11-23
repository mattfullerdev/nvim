require("config.lazy")
require("config.lsp")

vim.opt.clipboard = "unnamedplus"
vim.g.mapleader = " "
vim.g.snacks_explorer = false
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.number = true
vim.opt.relativenumber = true

-- Highlight when yanking (copying) text
-- Try it with 'yap' in normal mode
-- See ':help vim.highlight.on_yank()'
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
