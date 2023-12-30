return {
    "jay-babu/mason-null-ls.nvim",
    dependencies = {
        "williamboman/mason.nvim",
        "jose-elias-alvarez/null-ls.nvim",
    },
    opts = {
        ensure_installed = {
            "stylua",
        },
    },
    event = "VeryLazy",
}
