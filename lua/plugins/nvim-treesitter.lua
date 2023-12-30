return {
    "nvim-treesitter/nvim-treesitter",
    opts = {},
    config = require("config.plugins.nvim-treesitter"),
    build = ":TSUpdate",
    event = { "BufNewFile", "BufReadPre", "VeryLazy" },
}
