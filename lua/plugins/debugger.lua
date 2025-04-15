return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-telescope/telescope-dap.nvim",
		"theHamsta/nvim-dap-virtual-text",
		"Weissle/persistent-breakpoints.nvim",
		"przepompownia/nvim-dap-tab",
		"LiadOz/nvim-dap-repl-highlights",
		"nyngwang/NeoZoom.lua",
		"nvim-neotest/nvim-nio",
		"leoluz/nvim-dap-go",
    "suketa/nvim-dap-ruby",
		"williamboman/mason.nvim",
	},
	config = function()
		local dap, dapui = require("dap"), require("dapui")

		dapui.setup({})
		require("nvim-dap-virtual-text").setup({})
		require("persistent-breakpoints").setup { load_breakpoints_event = { "BufReadPost" } }
		require("nvim-dap-repl-highlights").setup()
		require("neo-zoom").setup()
		require("telescope").load_extension("dap")
		require("dap-tab").setup()
		require("dap-go").setup()
    require("dap-ruby").setup()


		-- Optional: Keymaps for better UX
		vim.keymap.set("n", "<leader>dw", require("dap-tab").verboseGoToDebugWin, { desc = "Go to Debug Win" })
		vim.keymap.set("n", "<leader>dq", require("dap-tab").closeDebugWin, { desc = "Close Debug Win" })
		vim.keymap.set("n", "<leader>du", require("dapui").toggle, { desc = "Toggle DAP UI" })
		vim.keymap.set("n", "<leader>dvt", require("nvim-dap-virtual-text").toggle, { desc = "Toggle DAP Virtual Text" })
		vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint)
		vim.keymap.set("n", "<leader>gb", dap.run_to_cursor)
		-- Stepping
		vim.keymap.set("n", "<leader>dc", dap.continue)
		vim.keymap.set("n", "<leader>di", dap.step_into)
		vim.keymap.set("n", "<leader>dl", dap.step_over)
		vim.keymap.set("n", "<leader>do", dap.step_out)
		vim.keymap.set("n", "<leader>dh", dap.step_back)
		vim.keymap.set("n", "<leader>dr", dap.restart)
		-- Eval var under cursor
		vim.keymap.set("n", "<leader>?", function()
			require("dapui").eval(nil, { enter = true })
		end)
		-- Telescope
		vim.keymap.set("n", "<leader>dt", ":Telescope dap breakpoints<CR>", { desc = "List DAP Breakpoints" })
		-- NeoZoom
		vim.keymap.set('n', '<leader>z', function()
			vim.cmd('NeoZoomToggle')
		end, { silent = true })
		-- dap-ui Reset
		vim.keymap.set("n", "<leader>dR", function()
			require("dapui").toggle({ reset = true })
		end, { desc = "Fix DAP UI Layout" })
		-- Listeners
		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end
		-- dap.listeners.after.event_initialized["dap_repl"] = function()
		-- 	require("dap").repl.open()
		-- end
	end,
}
