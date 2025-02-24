return {
	{
		"christoomey/vim-tmux-navigator",
		keys = {
			vim.keymap.set("n", "<M-h>", ":TmuxNavigateLeft<CR>", { silent = true }),
			vim.keymap.set("n", "<M-j>", ":TmuxNavigateDown<CR>", { silent = true }),
			vim.keymap.set("n", "<M-k>", ":TmuxNavigateUp<CR>", { silent = true }),
			vim.keymap.set("n", "<M-l>", ":TmuxNavigateRight<CR>", { silent = true }),
		},
	}
}
