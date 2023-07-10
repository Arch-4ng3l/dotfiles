require("toggleterm").setup{
	direction = "float",
	size = 100,
}


vim.keymap.set("n", "<leader>t", vim.cmd.ToggleTerm)
