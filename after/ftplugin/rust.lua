-- local bufnr = vim.api.nvim_get_current_buf()
-- vim.keymap.set(
-- 	"n",
-- 	"<leader>a",
-- 	function()
-- 		vim.cmd.RustLsp('codeAction') -- supports rust-analyzer's grouping
-- 		local opts = { noremap = true, silent = true, buffer = bufnr }
-- 		vim.keymap.set("n", "gf", vim.lsp.buf.definition, opts)
-- 		vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
-- 		vim.keymap.set("n", "^", vim.lsp.buf.hover, opts)
-- 		vim.keymap.set("n", "<leader>gh", vim.lsp.buf.signature_help, opts)
-- 		vim.keymap.set("n", "<leader>ga", vim.lsp.buf.code_action, opts)
-- 		vim.keymap.set("n", "<leader>gn", vim.lsp.buf.rename, opts)
-- 		vim.keymap.set("n", "<leader>|", function()
-- 			vim.lsp.buf.format { async = true }
-- 		end, opts)
-- 		vim.keymap.set("n", "<leader>gd", vim.diagnostic.open_float, opts)
-- 		vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
-- 		vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
-- 		-- or vim.lsp.buf.codeAction() if you don't want grouping.
-- 	end,
-- 	{ silent = true, buffer = bufnr }
-- )
-- vim.keymap.set(
-- 	"n",
-- 	"K", -- Override Neovim's built-in hover keymap with rustaceanvim's hover actions
-- 	function()
-- 		vim.cmd.RustLsp({ 'hover', 'actions' })
-- 	end,
-- 	{ silent = true, buffer = bufnr }
-- )

vim.treesitter.start()

-- Rust-specific settings
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")

-- Run entire file (compile and run)
vim.keymap.set("n", "<leader>r", "<cmd>!cargo run<CR>", { silent = true })

-- Insert println! macro
vim.keymap.set("n", "<leader>c", 'oprintln!();<Esc>hi', { noremap = true, silent = true })

-- Insert breakpoint (using std::process::exit for simple debugging)
vim.keymap.set("n", "<leader>b", "ostd::process::exit(0); // DEBUG BREAKPOINT<Esc>", { noremap = true, silent = true })

-- Additional Rust-specific keymaps
vim.keymap.set("n", "<leader>rt", "<cmd>!cargo test<CR>", { silent = true })  -- Run tests
vim.keymap.set("n", "<leader>rc", "<cmd>!cargo check<CR>", { silent = true }) -- Check compilation
vim.keymap.set("n", "<leader>rb", "<cmd>!cargo build<CR>", { silent = true }) -- Build project
