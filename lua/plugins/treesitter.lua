return {
    "nvim-treesitter/nvim-treesitter",
    priority = 1000,
    build = ":TSUpdate",

    config = function()
        require("nvim-treesitter").setup({
            ensure_installed = {
                "java",
                "json",
                "lua",
                "python",
                "rust",
                "yaml",
            },
            highlight = { enable = true },
        })
    end,
}

