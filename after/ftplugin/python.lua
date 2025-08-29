vim.cmd("set tabstop=4")

vim.keymap.set("n", "<leader>r", "<cmd>!python3 %<CR>", { silent = true }) -- Run entire file
vim.keymap.set("n", "<leader>R", ":.w !pytest --trace %<CR>", { silent = true })    -- Run current line
vim.keymap.set("v", "<leader>R", ":'<,'>w !python3<CR>", { silent = true }) -- Run selected lines in visual mode

vim.keymap.set("n", "<leader>c", 'oprint()<Esc>i', { noremap = true, silent = true })

vim.keymap.set("n", "<leader>b", "oipdb.set_trace()<Esc>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>B", "oimport pudb; pudb.set_trace()<Esc>", { noremap = true, silent = true })
