require("tokyonight").setup({
        style = "storm",
        transparent = true
})

function Color(color)
        --color = color or "rose-pine"
        color = color or "tokyonight"

        vim.cmd.colorscheme(color)
       -- vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
       -- vim.cmd("highlight NormalNC guibg=NONE ctermbg=NONE")

       -- vim.cmd("highlight NvimTreeNormal guibg=NONE ctermbg=NONE")

       -- vim.cmd("highlight NvimTreeNormalNC guibg=NONE ctermbg=NONE")

       -- vim.cmd("highlight StatusLine guibg=NONE ctermbg=NONE")
end

Color()
