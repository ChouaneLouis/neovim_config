return {
    "savq/melange-nvim", --awefawefawef
    priority = 1000,
    config = function ()
        vim.cmd.colorscheme("melange")

        vim.api.nvim_set_hl(0, "Comment", { fg = "#63574c", italic = true })
        vim.api.nvim_set_hl(0, "@comment", { link = "Comment" })
    end,
}
