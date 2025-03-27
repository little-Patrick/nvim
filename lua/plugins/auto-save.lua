return {
	"Pocco81/auto-save.nvim",
	config = function()
		require("auto-save").setup {
			-- your config goes here
			-- or just leave it empty :)
		}
	end,
}
-- return {
-- 	vim.api.nvim_create_autocmd("InsertLeave", {
-- 		callback = function()
-- 			if vim.bo.modifiable and not vim.bo.readonly then
-- 				vim.cmd("silent! write")
-- 			end
-- 		end
-- 	})
-- }
