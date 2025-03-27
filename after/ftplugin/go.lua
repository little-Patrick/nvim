--  require('dapui').open({reset = true})  
vim.opt_local.shiftwidth = 4
vim.cmd("set tabstop=4")

-- vim.keymap.set("n", "<leader>r", "<cmd>!go run %<CR>", { silent = true })  -- Run the entire Go file
-- vim.keymap.set("n", "<leader>R", ":.w !go test -run .%<CR>", { silent = true })  -- Run tests in the current file
-- vim.keymap.set("v", "<leader>R", ":'<,'>w !go run<CR>", { silent = true })  -- Run selected lines in visual mode
-- vim.keymap.set("n", "<leader>c", 'ofmt.Println("")<Esc>hi', { noremap = true, silent = true })

-- Run entire Go file
vim.keymap.set("n", "<leader>r", "<cmd>!go run %<CR>", { silent = true })
-- Run current line with Yaegi
vim.keymap.set("n", "<leader>R", '<cmd>!dlv debug %<CR>', { silent = true })
-- Run selected lines in visual mode with Yaegi
vim.keymap.set("v", "<leader>R", ":'<,'>w !yaegi<CR>", { silent = true })
-- Insert a quick fmt.Println() debugging statement
vim.keymap.set("n", "<leader>c", 'ofmt.Println()<Esc>i', { noremap = true, silent = true })
-- Insert a runtime.Breakpoint() call for debugging
vim.keymap.set("n", "<leader>b", 'oruntime.Breakpoint()<Esc>', { noremap = true, silent = true })
