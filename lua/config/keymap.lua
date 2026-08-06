vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<leader>fv", vim.cmd.Ex, { desc = "Open netrw (:Ex)" })

vim.keymap.set("n", "<leader>yy", "\"+yy", { desc = "Yank line to computer clipboard" })
vim.keymap.set("n", "<leader>ya", "gg\"+yG", { desc = "Yank file content to computer clipboard" })
vim.keymap.set("v", "<leader>y", "\"+y", { desc = "Yank visual selection to computer clipboard" })

vim.keymap.set("n", "<leader>ne", function()
    vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { desc = "Go to next error" })
vim.keymap.set("n", "<leader>Ne", function()
    vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { desc = "Go to previous error" })
vim.keymap.set("n", "<leader>nw", function()
    vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.WARN })
end, { desc = "Go to next warning" })
vim.keymap.set("n", "<leader>Nw", function()
    vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.WARN })
end, { desc = "Go to previous warning" })

