vim.opt_local.shiftwidth = 2

vim.keymap.set("n", "<leader>r", "<cmd>!node %<CR>", { silent = true }) -- Run entire file
vim.keymap.set("n", "<leader>R", ":.w !node<CR>", { silent = true })    -- Run current line
vim.keymap.set("v", "<leader>R", ":'<,'>w !node<CR>", { silent = true }) -- Run selected lines in visual mode

vim.keymap.set("n", "<leader>c", "oconsole.log('🚀:', );<Esc>h", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>b", "odebugger;<Esc>", { noremap = true, silent = true })
