
return {
	'nvim-telescope/telescope.nvim', tag = '0.1.1',
	dependencies = {
			'nvim-lua/plenary.nvim',
				{
     			 	'nvim-telescope/telescope-fzf-native.nvim',
      				build = 'make',
				config = function()
        				require("telescope").load_extension("fzf")
      					end,
    				}
			},
	lazy = false,
        config = function()
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
		vim.keymap.set('n', '<C-p>', builtin.git_files, {})
		vim.keymap.set('n', '<leader>ps', function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end)
		vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
	
            --vim.keymap.set("n", "<leader>r", require("telescope.builtin").oldfiles, { desc = "Find recently opened files" })
            --vim.keymap.set("n", "<leader>bf", require("telescope.builtin").buffers, { desc = "Find in buffers" })
            --vim.keymap.set("n", "<leader>bj", require("telescope.builtin").jumplist, { desc = "Find in buffers" })
  		extensions = {
			fzf = {
    				fuzzy = true,                    -- false will only do exact matching
      				override_generic_sorter = true,  -- override the generic sorter
      				override_file_sorter = true,     -- override the file sorter
      				case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    			}
  		}
        end
}
