local wk = require("which-key")

wk.register({
    ["x"] = { '"_x', "Delete character" },
    ["X"] = { '"_dd', "Delete line " },
    [",q"] = { "<cmd>qa<cr>", "Quit all" },
    [",Q"] = { "<cmd>qa!<cr>", "Force quit all" },
    [",w"] = { "<cmd>wa<cr>", "Write all" },
    [",W"] = { "<cmd>qa!<cr>", "Force write all" },
    ["<leader>f"] = {
        name = "+telescope",
        ["f"] = { require("telescope.builtin").find_files, "Telescope find_files" },
        ["g"] = { require("telescope.builtin").live_grep, "Telescope live_grep" },
        ["b"] = { require("telescope.builtin").buffers, "Telescope buffers" },
        ["h"] = { require("telescope.builtin").help_tags, "Telescope help_tags" },
    },
    ["<leader>t"] = {
        name = "+nvim-tree",
        ["o"] = { "<cmd>NvimTreeOpen<cr>", "Open nvim-tree" },
        ["x"] = { "<cmd>NvimTreeClose<cr>", "Close nvim-tree" },
        ["t"] = { "<cmd>NvimTreeToggle<cr>", "Toggle nvim-tree" },
        ["f"] = { "<cmd>NvimTreeFocus<cr>", "Focus nvim-tree" },
    },
    ["<leader>/"] = { require("Comment.api").toggle.linewise.current, "Comment toggle linewise" },
    ["<leader>."] = { require("Comment.api").toggle.blockwise.current, "Comment toggle blockwise" },
    ["<leader>e"] = { "<cmd>NvimTreeFocus<cr>", "Focus nvim-tree" },
    ["<leader>x"] = { "<cmd>Bdelete<cr>", "Close current buffer" },
    ["<leader>w"] = { "<cmd>w<cr>", "Write" },
    ["<leader>W"] = { "<cmd>w!<cr>", "Force write" },
    ["<leader>q"] = { "<cmd>q<cr>", "Quit" },
    ["<leader>Q"] = { "<cmd>q!<cr>", "Force quit" },
    ["<leader>k"] = { "<cmd>WhichKey<cr>", "Show WhichKey" },
    ["<leader>["] = { require("ufo").openAllFolds, "Open all folds" },
    ["<leader>]"] = { require("ufo").closeAllFolds, "Close all folds" },
    ["<leader>fm"] = {
        function(_, opts)
            vim.lsp.buf.format({ async = true })
        end,
        "LSP formatting",
    },
})

require("leap").create_default_mappings(true)
