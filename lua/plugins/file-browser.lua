return {
    	'nvim-telescope/telescope-file-browser.nvim',

  	keys = {
    	{
      		'<leader>pv',
      		':Telescope file_browser path=%:p:h=%:p:h<cr>',
      		desc = 'file browser',
    	},
  	},
  	config = function()
    		require('telescope').load_extension('file_browser')
  	end
	--config = function()
  	--	extensions = {
    	--		file_browser = {
      	--			theme = 'ivy',
      				-- disables netrw and use telescope-file-browser in its place
      	--			hijack_netrw = true,
	--		},
    	--	}
        --end
}
