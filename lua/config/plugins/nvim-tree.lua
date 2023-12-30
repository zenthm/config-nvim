return function(_, opts)
    require("nvim-tree").setup(opts)
    require("nvim-tree.api").tree.open()
end
