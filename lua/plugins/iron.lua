return {
	{
		"Vigemus/iron.nvim",
		config = function()
			local iron = require("iron.core")
			local view = require("iron.view")
			local common = require("iron.fts.common")

			iron.setup {
				config = {
					-- Whether a repl should be discarded or not
					scratch_repl = true,
					-- Your repl definitions come here
					repl_definition = {
						sh = {
							-- Can be a table or a function that
							-- returns a table (see below)
							command = { "zsh" }
						},
						python = {
							-- command = { "python3" }, 
							command = { "ipython", "--no-autoindent" },
							format = common.bracketed_paste_python,
							block_dividers = { "# %%", "#%%" },
						}
					},
					-- set the file type of the newly created repl to ft
					-- bufnr is the buffer id of the REPL and ft is the filetype of the
					-- language being used for the REPL.
					repl_filetype = function(bufnr, ft)
						return ft
						-- or return a string name such as the following
						-- return "iron"
					end,
					-- How the repl window will be displayed
					-- See below for more information
					-- repl_open_cmd = view.bottom(40),

					-- repl_open_cmd can also be an array-style table so that multiple
					-- repl_open_commands can be given.
					-- When repl_open_cmd is given as a table, the first command given will
					-- be the command that `IronRepl` initially toggles.
					-- Moreover, when repl_open_cmd is a table, each key will automatically
					-- be available as a keymap (see `keymaps` below) with the names
					-- toggle_repl_with_cmd_1, ..., toggle_repl_with_cmd_k
					-- For example,
					--
					repl_open_cmd = {
					  view.split.vertical.rightbelow("%40"), -- cmd_1: open a repl to the right
					  view.split.rightbelow("%25")  -- cmd_2: open a repl below
					}

				},
				-- Iron doesn't set keymaps by default anymore.
				-- You can set them here or manually add keymaps to the functions in iron.core
				keymaps = {
					toggle_repl = ",rr", -- toggles the repl open and closed.
					-- If repl_open_command is a table as above, then the following keymaps are
					-- available
					-- toggle_repl_with_cmd_1 = ",rv",
					-- toggle_repl_with_cmd_2 = ",rh",
					restart_repl = ",rR", -- calls `IronRestart` to restart the repl
					send_motion = ",rs",
					visual_send = ",rs",
					send_file = ",rf",
					send_line = ",rl",
					send_paragraph = ",rp",
					send_until_cursor = ",ru",
					send_mark = ",rm",
					send_code_block = ",rb",
					send_code_block_and_move = ",rn",
					mark_motion = ",rm",
					mark_visual = ",rm",
					remove_mark = ",rd",
					cr = ",r<cr>",
					interrupt = ",rx",
					exit = ",rq",
					clear = ",rk",
				},
				-- If the highlight is on, you can change how it looks
				-- For the available options, check nvim_set_hl
				highlight = {
					italic = true
				},
				ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
			}

			-- iron also has a list of commands, see :h iron-commands for all available commands
			vim.keymap.set('n', ',rf', '<cmd>IronFocus<cr>')
			vim.keymap.set('n', ',rh', '<cmd>IronHide<cr>')
		end
	}
}
