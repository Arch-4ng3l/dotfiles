vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-l>", "<C-w>l", {noremap = true})
vim.keymap.set("n", "<C-h>", "<C-w>h", {noremap = true})
vim.keymap.set("n", "<C-j>", "<C-w>j", {noremap = true})
vim.keymap.set("n", "<C-k>", "<C-w>k", {noremap = true})

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.cmd('command! Fr  FlutterRun')



local group = vim.api.nvim_create_augroup("My Group", {clear = true})
vim.api.nvim_create_autocmd("BufWritePost", {
  group = group,
  pattern = "*.dart",
  callback = function ()
    vim.cmd('FlutterRestart')
    vim.fn.jobstart("FlutterRestart")
  end,
})


vim.api.nvim_create_autocmd("VimLeave", {
  group = group,
  callback = function ()
    vim.cmd('FlutterQuit')
    vim.fn.jobstart("FlutterQuit")
  end,
})


