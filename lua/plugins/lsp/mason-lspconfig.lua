return {
	"williamboman/mason-lspconfig.nvim",
	enabled = true,
	cmd = { "LspInstall", "LspUninstall" },
	config = function()
		require("mason-lspconfig").setup({
			automatic_installation = false,
		})
		--settings for auto setup of servers
		require("plugins.lsp.handlers").setup()
		require("mason-lspconfig").setup_handlers({

			function(server_name)
				require("lspconfig")[server_name].setup({
					---@diagnostic disable-next-line: unused-local
					on_attach = function(c, b)
						require("plugins.lsp.handlers").lsp_keymaps(b)
					end,
					capabilities = require("plugins.lsp.handlers").capabilities,
				})
			end,

			["tsserver"] = require("plugins.lsp.servers.tsserver"),
			-- ["tailwindcss"] = require("plugins.lsp.servers.tailwindcss"),
			["html"] = require("plugins.lsp.servers.html"),
			["lua_ls"] = require("plugins.lsp.servers.lua_ls"),
			["pyright"] = require("plugins.lsp.servers.pyright"),
			["clangd"] = require("plugins.lsp.servers.clangd"),
			["jsonls"] = require("plugins.lsp.servers.jsonls"),
		})
	end,
}