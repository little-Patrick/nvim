return {
	"vim-test/vim-test",
	dependencies = {
		"preservim/vimux"
	},
	vim.keymap.set("n", "<leader>T", ":TestNearest<CR>"),
	vim.keymap.set("n", "<leader>t", ":TestFile<CR>"),
	vim.keymap.set("n", "<leader>s", ":TestSuite<CR>", { silent = true }),
	vim.keymap.set("n", "<leader>l", ":TestLast<CR>"),
	vim.keymap.set("n", "<leader>v", ":TestVisit<CR>"),
	vim.cmd("let test#strategy = 'basic'")
}
