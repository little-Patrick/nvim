return {
	{
		'saghen/blink.cmp',
		dependencies = {
			'rafamadriz/friendly-snippets',
		},
		version = '*',
		opts = {
			keymap = { preset = 'default' },

			appearance = {
				use_nvim_cmp_as_default = true,
				nerd_font_variant = 'mono'
			},
			cmdline = {
				keymap = {
					-- recommended, as the default keymap will only show and select the next item
					['<Tab>'] = { 'show', 'accept' },
				},
				completion = { menu = { auto_show = true } },
			},

			-- Add 'dadbod' to the list of completion sources
			sources = {
				default = { 'lsp', 'path', 'snippets', 'buffer', 'cmdline', 'omni' }
			},
		},
		opts_extend = { "sources.default" }
	},
}
