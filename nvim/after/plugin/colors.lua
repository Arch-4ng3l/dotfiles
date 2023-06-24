function Color(color) 
		color = color or "catppuccin"
		vim.cmd.colorscheme(color)
end

Color()
