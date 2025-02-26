return {
	{
		'saghen/blink.cmp',
		dependencies = {
			'rafamadriz/friendly-snippets',
			'kristijanhusak/vim-dadbod-completion', -- Add dadbod completion
		},
		version = '*',
		opts = {
			keymap = { preset = 'default' },

			appearance = {
				use_nvim_cmp_as_default = true,
				nerd_font_variant = 'mono'
			},

			-- Add 'dadbod' to the list of completion sources
			sources = {
				default = { 'lsp', 'path', 'snippets', 'buffer', 'dadbod' },
				providers = {
					dadbod = { name = "Dadbod", module = "vim_dadbod_completion.blink" },
				},
			},
		},
		opts_extend = { "sources.default" }
	},
}
