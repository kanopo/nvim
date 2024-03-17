return {
    "jose-elias-alvarez/null-ls.nvim",
    event = "BufReadPre",
    config = function()
        local null_ls = require("null-ls")
        local formatting = null_ls.builtins.formatting
        local diagnostics = null_ls.builtins.diagnostics
        null_ls.setup({
            sources = {
                -- lua
                formatting.stylua,
                diagnostics.luacheck,
            },
        })
    end
}
