return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			style = "night",     -- Choose your style: "storm", "moon", "night", "day"
			transparent = true,  -- Enable this to disable setting the background color
			terminal_colors = true, -- Configure the colors used when opening a `:terminal`
			styles = {
				-- Style to be applied to different syntax groups
				comments = { italic = true },
				keywords = { italic = true },
				-- Background styles
				sidebars = "transparent", -- style for sidebars
				floats = "transparent", -- style for floating windows
			}
		},
		config = function()
			require("tokyonight").setup({
				on_highlights = function(hl)
					hl.LineNr = { fg = "#ffffff" }
					hl.CursorLineNr = { fg = "#ffffff" }
					hl.WinSeparator = { fg = "#ffffff" }
					hl.FloatBorder = { fg = "#ffffff" }
				end,
			})
			vim.cmd [[colorscheme tokyonight-night]]
		end,
	},
	{
		"xiyaowong/transparent.nvim",
		lazy = false,
		after = "tokyonight.nvim", -- Ensure this loads after the colorscheme
		config = function()
			require("transparent").setup({
				-- table: default groups
				groups = {
					'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
					'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
					'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
					'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
					'EndOfBuffer', 'Telescope',
				},
				-- table: additional groups that should be cleared
				extra_groups = {},
				-- table: groups you don't want to clear
				exclude_groups = {},
				-- function: code to be executed after highlight groups are cleared
				-- Also the user event "TransparentClear" will be triggered
			})
		end,
	},
}

-- require("transparent").toggle()
