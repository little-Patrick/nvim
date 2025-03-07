return {
	{
		"christoomey/vim-tmux-navigator",
		keys = {
			vim.keymap.set("n", "<M-mh>", ":TmuxNavigateLeft<CR>", { silent = true }),
			vim.keymap.set("n", "<M-mj>", ":TmuxNavigateDown<CR>", { silent = true }),
			vim.keymap.set("n", "<M-mk>", ":TmuxNavigateUp<CR>", { silent = true }),
			vim.keymap.set("n", "<M-ml>", ":TmuxNavigateRight<CR>", { silent = true }),
		},
	}
}
