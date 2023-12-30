return function(_, opts)
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    local select_opts = {behavior = cmp.SelectBehavior.Select}

    cmp.setup({
        snippet = {
            expand = function(args)
                luasnip.lsp_expand(args.body)
            end
        },
        window = {
            completion = cmp.config.window.bordered(),
            documentation = cmp.config.window.bordered(),
        },
        sources = {
            {name = "path"},
            {name = "nvim_lsp"},
            {name = "buffer"},
            {name = "luasnip"},
        },
        mapping = {
            ["<Up>"] = cmp.mapping.select_prev_item(select_opts),
            ["<Down>"] = cmp.mapping.select_next_item(select_opts),
            ["<Esc>"] = cmp.mapping.abort(),
            ["<CR>"] = cmp.mapping.confirm(),
        },
    })
end
