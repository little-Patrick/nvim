return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		require('lualine').setup({
			options = {
				theme = 'nightfly',         -- Make sure you have this theme installed
			},
			sections = {
				lualine_x = {
					"rest", -- Adds rest.nvim env info
					{
						"rest",
						icon = "",
						color = { fg = "#428890" }
					}
				}
			}
		})
	end
}
