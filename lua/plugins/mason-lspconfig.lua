return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        "williamboman/mason.nvim",
        "neovim/nvim-lspconfig",
    },
    opts = {
        ensure_installed = {
            "cssls",
            "html",
            "lua_ls",
            "pyright",
            "tsserver",
        },
    },
    event = "VeryLazy",
}
