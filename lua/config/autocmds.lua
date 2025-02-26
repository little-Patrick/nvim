vim.api.nvim_create_autocmd("FileType", {
  pattern = { "sql", "mysql", "plsql" },
  callback = function()
    require("blink.cmp").setup({
      sources = {
        default = { "lsp", "path", "snippets", "buffer", "dadbod" },
      }
    })
  end,
})

