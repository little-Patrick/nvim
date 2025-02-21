			-- == === Lazy === == --
require("config.lazy")

	-- == === Vim Settings === == --
vim.cmd("set shiftwidth=2")
vim.cmd("set tabstop=2")
vim.cmd("set title")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set noerrorbells")
vim.cmd("set autowriteall")
vim.cmd("set noswapfile")
vim.cmd("set scrolloff=5")
vim.cmd("set nowrap")
vim.opt.guicursor = ""
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.updatetime = 50

			-- == Key Map == --
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.api.nvim_set_keymap('n', '<Space>', '', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Space>', '', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ev", vim.cmd.Ex)
vim.keymap.set("n", "<leader><leader>w", "<cmd>source %<CR>")
vim.keymap.set("n", "<leader>w", ":.lua<CR>")
vim.keymap.set("v", "<leader>w", ":.lua<CR>")

				-- Window Navigation --
vim.keymap.set("n", "<M-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<M-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<M-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<M-l>", ":wincmd l<CR>")

				-- Quick Fix --
vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<M-k>", "<cmd>cprev<CR>")
				-- == Color == --
vim.cmd[[colorscheme tokyonight-night]]


	 -- == === Terminal === == --
vim.api.nvim_create_autocmd('TermOpen', {
	group = vim.api.nvim_create_augroup('custom-term-open', { clear = true}),
	callback = function()
		vim.opt.number = false
		vim.opt.relativenumber = false
	end,
})

vim.keymap.set("n", "<leader>st", function()
	vim.cmd.vnew()
	vim.cmd.term()
	vim.cmd.wincmd("J")
	vim.api.nvim_win_set_height(0, 15)
end)

vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true })   -- Exit terminal mode with Esc
vim.keymap.set('t', '<M-h>', [[<C-\><C-n><C-w>h]], { noremap = true }) -- Move left
vim.keymap.set('t', '<M-j>', [[<C-\><C-n><C-w>j]], { noremap = true }) -- Move down
vim.keymap.set('t', '<M-k>', [[<C-\><C-n><C-w>k]], { noremap = true }) -- Move up
vim.keymap.set('t', '<M-l>', [[<C-\><C-n><C-w>l]], { noremap = true }) -- Move right

 -- == === Highlighting === == --
vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking (copying) text',
	group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true}),
	callback = function()
		vim.highlight.on_yank()
	end,
})


