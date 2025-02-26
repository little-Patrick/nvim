return {
  {
    "rest-nvim/rest.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
          opts.ensure_installed = opts.ensure_installed or {}
          table.insert(opts.ensure_installed, "http")
        end,
      },
    },
    config = function()
      -- Set up rest.nvim global options (if needed)
			---@type rest.Opts
      vim.g.rest_nvim = {
        -- Define your options here if necessary
      }

      -- Load the Telescope extension for rest.nvim
      require("telescope").load_extension("rest")
    end,
  },
}
