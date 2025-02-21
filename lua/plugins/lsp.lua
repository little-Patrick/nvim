return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				-- == Ensure Installed == --
				ensure_installed = {
					"lua_ls",
					"harper_ls",
					"ts_ls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{
				"folke/lazydev.nvim",
				ft = "lua", -- only load on Lua files
				opts = {
					library = {
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},
		},
		config = function()
			local capabilities = require("blink.cmp").get_lsp_capabilities()
			local lspconfig = require("lspconfig")

			-- == === LSP Server Setup === == --
			lspconfig.lua_ls.setup { capabilities = capabilities }
			lspconfig.harper_ls.setup { capabilities = capabilities }
			lspconfig.ts_ls.setup { capabilities = capabilities }
--			lspconfig.rubocop.setup { capabilities = capabilities }
			lspconfig.ruby_lsp.setup { capabilities = capabilities }

			-- Keymap for LSP functions
			local on_attach = function(_, bufnr)
				local opts = { noremap = true, silent = true, buffer = bufnr }

				-- Go to definition
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
				-- Show references
				vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
				-- Show hover documentation
				vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
				-- Show signature help
				vim.keymap.set("n", "<leader>sh", vim.lsp.buf.signature_help, opts)
				-- Code actions
				vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
				-- Rename symbol
				vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
				-- Format document
				vim.keymap.set("n", "<leader>f", function()
					vim.lsp.buf.format { async = true }
				end, opts)
				-- Show diagnostics
				vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)
				-- Navigate diagnostics
				vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
				vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
			end

			-- Apply the `on_attach` function to all LSPs
			local servers = { "lua_ls", "harper_ls", "ts_ls" }
			for _, server in ipairs(servers) do
				lspconfig[server].setup {
					capabilities = capabilities,
					on_attach = on_attach,
				}
			end
		end,
	},
}
