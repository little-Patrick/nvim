return {
    "ThePrimeagen/harpoon",  -- The Harpoon plugin
    branch = "harpoon2",  -- Using the 'harpoon2' branch
    dependencies = { "nvim-lua/plenary.nvim" },  -- Harpoon requires plenary.nvim

    config = function()
				local harpoon = require('harpoon')
				harpoon:setup({})

				-- basic telescope configuration
				local conf = require("telescope.config").values
				local function toggle_telescope(harpoon_files)
						local file_paths = {}
						for _, item in ipairs(harpoon_files.items) do
								table.insert(file_paths, item.value)
						end

						require("telescope.pickers").new({}, {
								prompt_title = "Harpoon",
								finder = require("telescope.finders").new_table({
										results = file_paths,
								}),
								previewer = conf.file_previewer({}),
								sorter = conf.generic_sorter({}),
						}):find()
				end

				vim.keymap.set("n", "<leader>h", function() toggle_telescope(harpoon:list()) end,
						{ desc = "Open harpoon window" })
        -- Add the current file to the Harpoon list with <leader>a
        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, 
            { desc = "Add current file to Harpoon list" })

        -- Select files from Harpoon list with key mappings
        vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end, { desc = "Select 1st Harpoon file" })
        vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end, { desc = "Select 2nd Harpoon file" })
        vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end, { desc = "Select 3rd Harpoon file" })
        vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end, { desc = "Select 4th Harpoon file" })
        vim.keymap.set("n", "<leader>5", function() harpoon:list():select(5) end, { desc = "Select 4th Harpoon file" })
        vim.keymap.set("n", "<leader>6", function() harpoon:list():select(6) end, { desc = "Select 4th Harpoon file" })

        -- Navigate to the previous/next files in the Harpoon list
        vim.keymap.set("n", "<leader>b-b", function() harpoon:list():prev() end, { desc = "Previous Harpoon file" })
        vim.keymap.set("n", "<leader>n-n", function() harpoon:list():next() end, { desc = "Next Harpoon file" })
    end
}

