return {
	vim.api.nvim_create_autocmd("InsertLeave", {
		callback = function()
			if vim.bo.modifiable and not vim.bo.readonly then
				vim.cmd("silent! write")
			end
		end
	})
}
