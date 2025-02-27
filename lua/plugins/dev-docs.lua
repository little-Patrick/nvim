return {
	{
		"luckasRanarison/nvim-devdocs",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
		opts = {
			dir_path = vim.fn.stdpath("data") .. "/devdocs", -- installation directory
			format = "markdown",
			telescope = {},                               -- passed to the telescope picker
			filetypes = {
				-- Example mappings
				javascript = { "node", "javascript" },
				ruby = { "ruby", "rails" },

			},
			float_win = { -- passed to nvim_open_win(), see :h api-floatwin
				relative = "editor",
				height = 25,
				width = 120,
				border = "rounded",
			},
			wrap = false,                                -- text wrap, only applies to floating window
			previewer_cmd = "glow",                      -- e.g., "glow"
			cmd_args = { "-s", "auto", "-w", "99" },    -- example using glow
			cmd_ignore = {},                             -- ignore cmd rendering for the listed docs
			picker_cmd = "glow",                           -- use cmd previewer in picker preview
			picker_cmd_args = { "-s", "auto", "-w", "45" }, -- example using glow
			mappings = {                                 -- keymaps for the doc buffer
				open_in_browser = "O",                     -- Change from "o" to "O"
				scroll_up = "<C-k>",                       -- Change from <C-u> to <C-k>
				scroll_down = "<C-j>",                     -- Set your preferred keybinding
				vim.keymap.set("n", "<leader>D", "<cmd>DevdocsOpenCurrentFloat<CR>", { noremap = true, silent = true })

			},
			ensure_installed = {},         -- automatically installed docs
			after_open = function(bufnr) end, -- callback after opening the Devdocs window
		},
	}
}
