return {
	"b0o/blender.nvim",
	config = function()
		local ok, blender = pcall(require, "blender")
		if not ok then
			vim.notify("Failed to load blender.nvim", vim.log.levels.ERROR)
			return
		end

		blender.setup({
			profiles = {
				{
					name = 'blender',
					cmd = '/Applications/Blender.app/Contents/MacOS/Blender',
					use_launcher = true,
					extra_args = { '--python-use-system-env' },
				},
			},
			dap = {
				enabled = true,
			},
			notify = {
				enabled = true,
				verbosity = 'DEBUG',
			},
			watch = {
				enabled = true,
			},
			ui = {
				output_panel = {
					height = 0.25,
				},
			},
		})
	end,
	dependencies = {
		"MunifTanjim/nui.nvim",
		"grapp-dev/nui-components.nvim",
		"mfussenegger/nvim-dap",
		"LiadOz/nvim-dap-repl-highlights",
	},
}
