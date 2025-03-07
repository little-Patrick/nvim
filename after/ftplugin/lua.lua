vim.opt_local.shiftwidth = 2

vim.keymap.set("n", "<leader>r", "<cmd>source %<CR>")
vim.keymap.set("n", "<leader>R", ":.lua<CR>")
vim.keymap.set("v", "<leader>R", ":.lua<CR>")

vim.keymap.set("n", "<leader>t", "<cmd>PlenaryBustedFile %<CR>")
