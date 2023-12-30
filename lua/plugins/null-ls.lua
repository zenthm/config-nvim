return {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = require("config.plugins.null-ls"),
    event = { "BufNewFile", "BufReadPre", "VeryLazy" },
}
