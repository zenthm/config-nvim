return {
    "petertriho/nvim-scrollbar",
    dependencies = {
        "kevinhwang91/nvim-hlslens",
        "lewis6991/gitsigns.nvim",
    },
    opts = {},
    event = { "BufNewFile", "BufReadPre", "VeryLazy" },
}
