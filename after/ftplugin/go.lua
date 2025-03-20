
vim.cmd("set tabstop=4")

vim.keymap.set("n", "<leader>r", "<cmd>!go run %<CR>", { silent = true })  -- Run the entire Go file
vim.keymap.set("n", "<leader>R", ":.w !go test -run .%<CR>", { silent = true })  -- Run tests in the current file
vim.keymap.set("v", "<leader>R", ":'<,'>w !go run<CR>", { silent = true })  -- Run selected lines in visual mode

