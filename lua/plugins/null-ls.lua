return {
  	"jose-elias-alvarez/null-ls.nvim",
	config = function()
        		local null_ls = require("null-ls")
            		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
			local lsp_formatting = function(bufnr)
    						vim.lsp.buf.format({
        					filter = function(client)
            							return client.name == "null-ls"
        						end,
        					bufnr = bufnr,
    						})
						end
			local on_attach = function(client, bufnr)
			    	if client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
				    		group = augroup,
				    		buffer = bufnr,
				    		callback = function()
								lsp_formatting(bufnr)
				    			end,
						})
			    	end
			end
            		null_ls.setup({
                	sources = {
                    		null_ls.builtins.formatting.black,
                    		null_ls.builtins.diagnostics.ruff,
				null_ls.builtins.diagnostics.mypy,

				null_ls.builtins.formatting.prettier,
                	},
			on_attach = on_attach
            		})
        	end,
}
