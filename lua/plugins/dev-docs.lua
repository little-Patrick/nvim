return {
  {
    "luckasRanarison/nvim-devdocs",
    opts = {
      dir_path = vim.fn.stdpath("data") .. "/devdocs", -- installation directory
      telescope = {}, -- passed to the telescope picker
      filetypes = {
        -- Example mappings
        scss = "sass",
        javascript = { "node", "javascript" },
				ruby = "ruby",
      },
      float_win = { -- passed to nvim_open_win(), see :h api-floatwin
        relative = "editor",
        height = 25,
        width = 100,
        border = "rounded",
      },
      wrap = false, -- text wrap, only applies to floating window
      previewer_cmd = nil, -- e.g., "glow"
      cmd_args = {}, -- example using glow: { "-s", "dark", "-w", "80" }
      cmd_ignore = {}, -- ignore cmd rendering for the listed docs
      picker_cmd = false, -- use cmd previewer in picker preview
      picker_cmd_args = {}, -- example using glow: { "-s", "dark", "-w", "50" }
      mappings = { -- keymaps for the doc buffer
        open_in_browser = "" -- Set your preferred keybinding
      },
      ensure_installed = {}, -- automatically installed docs
      after_open = function(bufnr) end, -- callback after opening the Devdocs window
    },
  }
}
