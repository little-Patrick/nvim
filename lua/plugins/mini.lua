return {
	{
		-- == File Manager == --
		"echasnovski/mini.files",
		version = "*",
		dependencies = { { "echasnovski/mini.icons", opts = {} } },
		config = function()
			require("mini.files").setup()

			-- Key mappings
			vim.keymap.set("n", "<leader>=", function()
				require("mini.files").open()
			end, { desc = "Open MiniFiles" })

			vim.keymap.set("n", "<leader>+", function()
				require("mini.files").open(vim.fn.expand("%:p:h"))
			end, { desc = "Open MiniFiles in current file directory" })
		end,
	},
	{
		'echasnovski/mini.move',
		version = false,
		config = function()
			require("mini.move").setup({
				mappings = {
					left       = "<M-z-l>",
					right      = "<M-z-h>",
					down       = "<M-z-j>",
					up         = "<M-z-k>",
					line_left  = "<M-z-l>",
					line_right = "<M-z-h>",
					line_down  = "<M-z-j>",
					line_up    = "<M-z-k>",
				},
			})
		end,
	},
	{
	"echasnovski/mini.pairs",
	version = false,
	event = "InsertEnter",
	config = function()
		require("mini.pairs").setup()
	end,
	},
	{ 'echasnovski/mini.ai',        version = false },
	{ 'echasnovski/mini.comment',   version = false },
	{ 'echasnovski/mini.operators', version = false },
	{ 'echasnovski/mini.splitjoin', version = false },
	{ 'echasnovski/mini.surround',  version = false },
	{ 'echasnovski/mini.jump',      version = false },
	{ 'echasnovski/mini.animate',   version = false },
}
