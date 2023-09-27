vim.opt.guicursor = ""

vim.opt.tabstop = 4

vim.opt.softtabstop = 4

vim.opt.shiftwidth = 4

vim.opt.smartindent = true

vim.opt.expandtab = true

vim.opt.termguicolors = true

vim.opt.wrap = false


vim.opt.scrolloff = 12

vim.opt.swapfile = false

vim.g.mapleader = ' '


vim.g.maplocalleader = ' '
vim.o.hlsearch = false

vim.wo.relativenumber = true
vim.wo.numberwidth = 4
vim.opt.cursorline = true
vim.opt.cursorlineopt.number = true

vim.wo.number = true
vim.o.clipboard = 'unnamedplus'

vim.o.breakindent = true

vim.o.undofile = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.wo.signcolumn = 'yes'

vim.o.updatetime = 250
vim.o.timeoutlen = 300

vim.o.completeopt = 'menuone,noselect'

local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
  pattern = '*',
})
vim.cmd("set list listchars=tab:»\\ \\,eol:⏎")
