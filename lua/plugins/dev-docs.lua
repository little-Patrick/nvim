return {
  "luckasRanarison/nvim-devdocs",
  branch = "master",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  cmd = {
    "DevdocsFetch",
    "DevdocsInstall",
    "DevdocsUninstall",
    "DevdocsOpen",
    "DevdocsOpenFloat",
    "DevdocsOpenCurrent",
    "DevdocsOpenCurrentFloat",
    "DevdocsUpdate",
    "DevdocsUpdateAll",
    "DevdocsBuild",
  },
  opts = {
    format = "markdown",
    filetypes = {
      javascript = { "html", "javascript" },
      ruby = { "ruby", "rails" }
    },
    -- use_node = false,
    ensure_installed = {
      -- Your ensure_installed entries
    },
    wrap = true,
    -- Remove glow as previewer since we're using markdown format
    -- previewer_cmd = "glow",
    -- cmd_args = { "-s", "auto", "-w", "97" },
    cmd_ignore = {},
    picker_cmd = true,
    picker_cmd_args = { "-s", "auto", "-w", "45" },
    mappings = {
      open_in_browser = "<leader>vb",
      toggle_rendering = "<leader>vr",
    },
    log_level = "debug",
    floating_window = {
      -- Add these settings for proper highlighting in floating windows
      filetype = "markdown",
      -- Optional: Add a hook to set up the buffer after creation
      border = "rounded",
      width = 97,
      height = 0.8,
    },
    -- Add this to ensure treesitter works in the floating window
    hooks = {
      -- This runs after the buffer is created
      after_open = function(bufnr)
        -- Set the filetype explicitly
        vim.api.nvim_buf_set_option(bufnr, "filetype", "markdown")
        -- Ensure syntax is on
        vim.cmd("syntax on")
        -- Apply treesitter highlighting
        vim.cmd("TSBufEnable highlight")
      end
    }
  },
}
-- return {
-- 	"luckasRanarison/nvim-devdocs",
-- 	branch = "master",
-- 	dependencies = {
-- 		"nvim-lua/plenary.nvim",
-- 		"nvim-telescope/telescope.nvim",
-- 		"nvim-treesitter/nvim-treesitter",
-- 	},
-- 	cmd = {
-- 		"DevdocsFetch",
-- 		"DevdocsInstall",
-- 		"DevdocsUninstall",
-- 		"DevdocsOpen",
-- 		"DevdocsOpenFloat",
-- 		"DevdocsOpenCurrent",
-- 		"DevdocsOpenCurrentFloat",
-- 		"DevdocsUpdate",
-- 		"DevdocsUpdateAll",
-- 		"DevdocsBuild",
-- 	},
-- 	opts = {
-- 		format = "markdown",
-- 		filetypes = {
-- 			javascript = { "html", "javascript" },
-- 			ruby = { "ruby", "rails" }
-- 		},
-- 		-- use_node = false,
-- 		ensure_installed = {
-- 			-- "ruby",
-- 			-- "rails",
-- 			-- "git",
-- 			-- "bash",
-- 			-- "zig",
-- 			-- "lua-5.1",
-- 			-- "html",
-- 			-- "css",
-- 			-- "javascript",
-- 			-- "typescript",
-- 			-- "react",
-- 			-- "web_extensions",
-- 		},
--     wrap = true,
--     previewer_cmd = "glow",
--     cmd_args = { "-s", "auto", "-w", "97" },
--     cmd_ignore = {},
--     picker_cmd = true,
--     picker_cmd_args = { "-s", "auto", "-w", "45" },
--     mappings = {
--       open_in_browser = "<leader>vb",
--       toggle_rendering = "<leader>vr",
--     },
--     log_level = "debug",
-- 	},
-- }
