return {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    opts = {
        hijack_cursor = true,
        renderer = {
            root_folder_label = false,
        },
    },
    config = require("config.plugins.nvim-tree"),
}
