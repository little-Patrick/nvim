return {
	"kristijanhusak/vim-dadbod-ui",
	dependencies = {
		"tpope/vim-dadbod",
		"kristijanhusak/vim-dadbod-completion",
		"vim-scripts/dbext.vim"
	},
	cmd = {
		"DBUI",
		"DBUIAddConnection",
		"DBUIClose",
		"DBUIToggle",
		"DBUIFindBuffer",
		"DBUIRenameBuffer",
		"DBUILastQueryInfo",
	},
	config = function()
		vim.g.db_ui_notification_width = 1
		vim.g.db_ui_debug = 1
	end,
}
