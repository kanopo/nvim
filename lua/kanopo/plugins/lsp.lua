local lsp_servers = {
    "lua_ls",
    "ltex",
}

return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-nvim-lsp",
        {
            "folke/lazydev.nvim",
            ft = "lua",
            opts = {
                library = {
                    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                },
            },
       },
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = lsp_servers,
            automatic_installation = true
        })
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        for _, lsp_server in pairs(lsp_servers) do
            require("lspconfig")[lsp_server].setup({
                capabilities = capabilities
            })
        end
    end
}
