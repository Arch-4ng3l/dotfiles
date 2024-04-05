vim.opt.guicursor = ""
vim.g.netrw_banner = 0

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
vim.wo.numberwidth = 1

vim.opt.cursorline = false
vim.opt.cursorlineopt.number = true

vim.wo.number = true
vim.o.clipboard ='unnamedplus'
--set clipboard+=unnamedplus

vim.o.breakindent = true

vim.o.undofile = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.completeopt = 'menuone,noselect'

local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
  pattern = '*',
})
