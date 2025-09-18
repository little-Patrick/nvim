return {
	-- {
	-- 	-- == File Manager == --
	-- 	"echasnovski/mini.files",
	-- 	version = "*",
	-- 	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	-- 	config = function()
	-- 		require("mini.files").setup()
	--
	-- 		-- Key mappings
	-- 		vim.keymap.set("n", "<leader>`", function()
	-- 			require("mini.files").open()
	-- 		end, { desc = "Open MiniFiles" })
	-- 	end,
	-- },
	{
		-- == Move Text == --
		"echasnovski/mini.move",
		version = false,
		config = function()
			require("mini.move").setup()
		end,
	},
	{
		-- == Auto Pairs == --
		"echasnovski/mini.pairs",
		version = false,
		event = "InsertEnter",
		config = function()
			require("mini.pairs").setup()
		end,
	},
	{
		-- == Text Objects == --
		"echasnovski/mini.ai",
		version = false,
		config = function()
			require("mini.ai").setup()
		end,
	},
	{
		-- == Commenting == --
		"echasnovski/mini.comment",
		version = false,
		config = function()
			require("mini.comment").setup()
		end,
	},
	{
		-- == Text Operations == --
		"echasnovski/mini.operators",
		version = false,
		config = function()
			require("mini.operators").setup()
		end,
	},
	-- {
	-- 	-- == Surround Text == --
	-- 	"echasnovski/mini.surround",
	-- 	version = false,
	-- 	config = function()
	-- 		require("mini.surround").setup()
	-- 	end,
	-- },
	{
 	 -- == Text == --
		"echasnovski/mini.jump",
		version = false,
		config = function()
			require("mini.jump").setup({
				mappings = {
					forward = "E", -- Change `s` to `E` for forward jump
					backward = "B", -- Change `S` to `B` for backward jump
				},
			})
		end,
	},
	{
	-- == Smooth Animations == --
	"echasnovski/mini.animate",
	version = false,
	config = function()
		require("mini.animate").setup()
	end,
},
}
