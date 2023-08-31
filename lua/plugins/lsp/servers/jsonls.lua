return function()
	require("lspconfig").jsonls.setup({
		on_attach = function(c, b)
			-- NOTE: Uncomment to enable inlay hints
			require("lsp-inlayhints").on_attach(c, b)
			c.server_capabilities.documentFormattingProvider = false
			require("plugins.lsp.handlers").lsp_keymaps(b)
		end,
		capabilities = require("plugins.lsp.handlers").capabilities,
		settings = {
			json = {
				schemas = require("schemastore").json.schemas(),
				validate = { enable = true },
			},
		},
	})
end