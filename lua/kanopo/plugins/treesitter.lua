local M = {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = "BufReadPost",
    dependencies = {
        "nvim-treesitter/nvim-treesitter-textobjects",
    },
    opts = {
        highlight = {
            enable = true,
            disable = function(lang, buf)
                local max_filesize = 100 * 1024 -- 100 KB
                local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                if ok and stats and stats.size > max_filesize then
                    return true
                end
            end,
            additional_vim_regex_highlighting = false,
        },
        autopairs = { enable = true },
        autotag = { enable = true },
        indent = { enable = true },
        ensure_installed = "all",
        sync_install = false,
        ignore_install = {}, -- List of parsers to ignore installation
        -- incremental_selection = {
        --     enable = true,
        --     keymaps = {
        --         init_selection = "<C-space>",
        --         node_incremental = "<C-space>",
        --         scope_incremental = false,
        --         node_decremental = "<C-s-space>",
        --     },
        -- },
    },
    config = function(_, opts)
        require("nvim-treesitter.configs").setup(opts)
        require("nvim-treesitter.install").update({
            with_sync = true,
        })
    end,
}

return M
