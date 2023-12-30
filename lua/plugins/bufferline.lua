return {
    "akinsho/bufferline.nvim",
    lazy = false,
    dependencies = {"nvim-tree/nvim-web-devicons"},
    opts = {
        options = {
            mode = "buffers",
            close_command = "Bdelete! %d",
            right_mouse_command = "Bdelete! %d",
            left_mouse_command = "buffer %d",
            offsets = {
                {
                    filetype = "NvimTree",
                    text = "File Explorer",
                    text_align = "center",
                },
            },
        },
    },
}
