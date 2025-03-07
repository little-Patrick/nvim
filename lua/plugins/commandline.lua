return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    cmdline = {
      enabled = true, -- Enable the command line UI
      view = "cmdline_popup", -- Use a custom view for the cmdline
    },
    messages = {
      enabled = false, -- Disable custom messaging UI (keep default Neovim messages)
    },
    popupmenu = {
      enabled = false, -- Disable custom popupmenu UI
    },
    notify = {
      enabled = false, -- Disable custom notifications
    },
    views = {
      cmdline_popup = {
        position = {
          row = "5%", -- Position the window near the bottom
          col = "50%", -- Center the window horizontally
        },
        size = {
          width = "auto", -- Auto-adjust width based on content
          height = "auto", -- Auto-adjust height based on content
        },
        border = {
          style = "rounded", -- Add a rounded border for aesthetics
          -- padding = { 1, 2 }, -- Add some padding
        },
      },
    },
    presets = {
      command_palette = false, -- Disable command palette
      long_message_to_split = false, -- Disable splitting long messages
      lsp_doc_border = false, -- Disable LSP documentation border
    },
  },
  dependencies = {
    "MunifTanjim/nui.nvim", -- Required dependency for noice.nvim
  },
}
