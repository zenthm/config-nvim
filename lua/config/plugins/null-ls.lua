return function(_, opts)
    local null_ls = require("null-ls")

    null_ls.setup({
        sources = {
            -- Diagnostics
            null_ls.builtins.diagnostics.ruff,

            -- Formatting
            null_ls.builtins.formatting.black,
            null_ls.builtins.formatting.stylua,
        },
    })
end
