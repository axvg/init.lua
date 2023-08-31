return function()
	require("lspconfig").pyright.setup({
		on_attach = function(c, b)
			c.server_capabilities.documentFormattingProvider = false
			require("plugins.lsp.handlers").lsp_keymaps(b)
		end,
		capabilities = require("plugins.lsp.handlers").capabilities,
		settings = {
			python = {},
		},
	})
end