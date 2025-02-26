
vim.keymap.set("n", "<leader>r", "<cmd>!ruby %<CR>", { silent = true }) -- Run entire file
vim.keymap.set("n", "<leader>R", ":.w !ruby<CR>", { silent = true })    -- Run current line
vim.keymap.set("v", "<leader>R", ":'<,'>w !ruby<CR>", { silent = true }) -- Run selected lines in visual mode

vim.keymap.set("n", "<leader>c", "obinding.pry; require 'pry'<Esc>", { noremap = true, silent = true })
