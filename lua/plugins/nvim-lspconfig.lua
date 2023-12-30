return {
    "neovim/nvim-lspconfig",
    config = require("config.plugins.nvim-lspconfig"),
    event = {"BufNewFile", "BufReadPre", "VeryLazy"},
}
