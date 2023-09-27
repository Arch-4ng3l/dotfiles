vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-l>", "<C-w>l", {noremap = true})
vim.keymap.set("n", "<C-h>", "<C-w>h", {noremap = true})
vim.keymap.set("n", "<C-j>", "<C-w>j", {noremap = true})
vim.keymap.set("n", "<C-k>", "<C-w>k", {noremap = true})

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })



vim.cmd('command! Fr  FlutterRun')



--[Flutter]--


local function run_dart_format()
  local current_file = vim.fn.expand('%:p')
  vim.fn.jobstart('dart format ' .. current_file, {
    on_exit = function(_, _, _)
      vim.cmd('e')
    end
  })
end


local group = vim.api.nvim_create_augroup("My Group", {clear = true})
vim.api.nvim_create_autocmd("BufWritePost", {
  group = group,
  pattern = "*.dart",
  callback = function ()
    vim.cmd('FlutterRestart')
    run_dart_format()
    vim.fn.jobstart("FlutterRestart")
  end,
})

vim.api.nvim_create_autocmd("VimLeave", {
  group = group,
  pattern = "*.dart",
  callback = function ()
    vim.cmd('FlutterQuit')
    vim.fn.jobstart("FlutterQuit")
  end,
})

--[End]--

