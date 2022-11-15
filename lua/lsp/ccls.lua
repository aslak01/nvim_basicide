local M = {}

M.setup = function(on_attach, capabilities)
    require("lspconfig").ccls.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        init_options = {
            client = {
                snippetSupport = false,
            },
        },
    })
end

return M

