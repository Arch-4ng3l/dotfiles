vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true


vim.api.nvim_exec([[
  augroup FileTypeIndent
    autocmd!
    autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4
    autocmd FileType lua setlocal expandtab shiftwidth=8 tabstop=8
  augroup END
]], true)



vim.opt.wrap = false

vim.g.mapleader = " "

vim.opt.scrolloff = 12


vim.opt.swapfile = false











