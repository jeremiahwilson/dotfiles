-- :help lua-guide-autocommands

-- Highlight when yanking text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- set the scroll option to 1/3 the visual window (default 1/2)
vim.opt.scroll = math.floor(vim.fn.winheight(0)/3)
vim.api.nvim_create_autocmd("VimResized", {
  callback = function()
    vim.opt.scroll = math.floor(vim.fn.winheight(0)/3)
  end
})
