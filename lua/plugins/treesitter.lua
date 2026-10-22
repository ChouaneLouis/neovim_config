return {
    "nvim-treesitter/nvim-treesitter",
    priority = 1000,
    build = ":TSUpdate",

    config = function()
        vim.filetype.add({
            extension = { qs = "qsharp" },
        })

        local parsers = require("nvim-treesitter.parsers")
        parsers.qsharp = {
            install_info = {
                url = "https://github.com/bezpechno/tree-sitter-qsharp",
                files = { "src/parser.c" },
                branch = "main",
            },
            filetype = "qsharp",
        }

        require("nvim-treesitter").setup({
            ensure_installed = {
                "java",
                "json",
                "lua",
                "python",
                "rust",
                "yaml",
                "typescript",
            },
            highlight = { enable = true },
        })
    end,
}

