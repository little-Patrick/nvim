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
}
