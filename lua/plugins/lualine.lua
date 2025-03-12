return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		require('lualine').setup({
			options = {
				theme = 'tokyonight', -- Make sure you have this theme installed
			}
		})
	end
}
-- iceberg_dark
