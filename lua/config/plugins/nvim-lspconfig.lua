return function(_, opts)
    require("neodev")

    local lspconfig = require("lspconfig")
    local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

    lsp_capabilities.textDocument.foldingRange = {
        dynamicRegistration = false,
        lineFoldingOnly = true,
    }

    lspconfig.cssls.setup({
        capabilities = lsp_capabilities,
    })
    lspconfig.html.setup({
        capabilities = lsp_capabilities,
    })
    lspconfig.lua_ls.setup({
        capabilities = lsp_capabilities,
    })
    lspconfig.pyright.setup({
        capabilities = lsp_capabilities,
    })
    lspconfig.tsserver.setup({
        capabilities = lsp_capabilities,
    })
end
