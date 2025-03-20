return {
	"shortcuts/no-neck-pain.nvim",
	keys = {
		{ "<leader>n", "<cmd>NoNeckPain<cr>", desc = "Toggle No Neck Pain" },
	},
	config = function()
		require("lazy").setup({
			buffers = {
				blend = -0.2,
			}
		})
	end
}
