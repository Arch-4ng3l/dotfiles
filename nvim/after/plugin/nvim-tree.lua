

require("nvim-tree").setup({
        auto_close = true,

        sort_by = "case_sensitive",
        view = {
                width = 30,
        },
        renderer = {
                group_empty = true,
        },
        filters = {
                dotfiles = false,
        },
})


require("nvim-web-devicons").setup {

}

