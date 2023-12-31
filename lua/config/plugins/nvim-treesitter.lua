return function(_, opts)
    require("nvim-treesitter").setup(opts)
    require("nvim-treesitter.configs").setup({
        ensure_installed = {
            "css",
            "html",
            "javascript",
            "lua",
            "python",
        },
        highlight = {
            enable = true,
        },
        incremental_selection = {
            enable = true,
        },
        indent = {
            enable = true,
        },
        textobjects = {
            select = {
                enable = true,
            },
        },
    })
end
