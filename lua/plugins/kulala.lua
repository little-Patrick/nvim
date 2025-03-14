return {
	{
		"mistweaverco/kulala.nvim",
		keys = {
			{ "<leader>Rs", desc = "Send request" },
			{ "<leader>Ra", desc = "Send all requests" },
			{ "<leader>Rb", desc = "Open scratchpad" },
		},
		ft = { "http", "rest" },
		opts = {
			-- your configuration comes here
			global_keymaps = false,
		},
	},
}
  -- ["Open scratchpad"] = { "<leader>Rb", function() require("kulala").scratchpad() end, },
  -- ["Open kulala"] = { "<leader>Ro", function() require("kulala").open() end, },
  --
  -- ["Toggle headers/body"] = { "<leader>Rt", function() require("kulala").toggle_view() end, ft = { "http", "rest" }, },
  -- ["Show stats"] = { "<leader>RS", function() require("kulala").show_stats() end, ft = { "http", "rest" }, },
  --
  -- ["Close window"] = { "<leader>Rq", function() require("kulala").close() end, ft = { "http", "rest" }, },
  --
  -- ["Copy as cURL"] = { "<leader>Rc", function() require("kulala").copy() end, ft = { "http", "rest" }, },
  -- ["Paste from curl"] = { "<leader>RC", function() require("kulala").from_curl() end, ft = { "http", "rest" }, },
  --
  -- ["Send request"] = { "<leader>Rs", function() require("kulala").run() end, mode = { "n", "v" }, },
  -- ["Send request <cr>"] = { "<CR>", function() require("kulala").run() end, mode = { "n", "v" }, ft = { "http", "rest" }, },
  -- ["Send all requests"] = { "<leader>Ra", function() require("kulala").run_all() end, mode = { "n", "v" }, },
  --
  -- ["Inspect current request"] = { "<leader>Ri", function() require("kulala").inspect() end, ft = { "http", "rest" }, },
  -- ["Replay the last request"] = { "<leader>Rr", function() require("kulala").replay() end, },
  --
  -- ["Find request"] = { "<leader>Rf", function() require("kulala").search() end, ft = { "http", "rest" }, },
  -- ["Jump to next request"] = { "<leader>Rn", function() require("kulala").jump_next() end, ft = { "http", "rest" }, },
  -- ["Jump to previous request"] = { "<leader>Rp", function() require("kulala").jump_prev() end, ft = { "http", "rest" }, },
  --
  -- ["Select environment"] = { "<leader>Re", function() require("kulala").set_selected_env() end, ft = { "http", "rest" }, },
  -- ["Download GraphQL schema"] = { "<leader>Rg", function() require("kulala").download_graphql_schema() end, ft = { "http", "rest" }, },
  --
  -- ["Clear globals"] = { "<leader>Rx", function() require("kulala").scripts_clear_global() end, ft = { "http", "rest" },
  -- ["Clear cached files"] = { "<leader>RX", function() require("kulala").clear_cached_files() end, ft = { "http", "rest" }, },
  --
  -- ["Show headers"] = { "H", function() require("kulala.ui").show_headers() end, },
  -- ["Show body"] = { "B", function() require("kulala.ui").show_body() end, },
  -- ["Show headers and body"] = { "A", function() require("kulala.ui").show_headers_body() end, },
  -- ["Show verbose"] = { "V", function() require("kulala.ui").show_verbose() end, },
  -- ["Show script output"] = { "O", function() require("kulala.ui").show_script_output() end, },
  -- ["Show stats"] = { "S", function() require("kulala.ui").show_stats() end, },
  -- ["Next response"] = { "]", function() require("kulala.ui").show_next() end, },
  -- ["Previous response"] = { "[", function() require("kulala.ui").show_previous() end, },
  -- ["Close"] = { "q", function() require("kulala.ui").close_kulala_buffer() end, },
