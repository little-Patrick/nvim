return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "night", -- Choose your style: "storm", "moon", "night", "day"
    transparent = true, -- Enable this to disable setting the background color
    terminal_colors = true, -- Configure the colors used when opening a `:terminal`
    styles = {
      -- Style to be applied to different syntax groups
      comments = { italic = true },
      keywords = { italic = true },
      -- Background styles
      sidebars = "transparent", -- style for sidebars
      floats = "transparent", -- style for floating windows
    }
  },
  config = function()
    vim.cmd[[colorscheme tokyonight-night]]
  end,
}
