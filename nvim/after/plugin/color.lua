require("tokyonight").setup({
        style = "night",
        transparent = true,
        disable_background = true
})
require('rose-pine').setup({
    disable_background = true
})

function Color(color)
        --color = color or "rose-pine"
        color = color or "tokyonight"

        vim.cmd.colorscheme(color)
end

Color()
