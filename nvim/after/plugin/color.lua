require('rose-pine').setup({
        disable_background = true,
        disable_float_background = true,
        disable_italics = true,
})

function Color()
        vim.cmd.colorscheme("rose-pine")
        vim.cmd(
                "highlight Comment ctermfg=green"
        )
end

Color()
