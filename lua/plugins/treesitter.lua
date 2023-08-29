return {
	'nvim-treesitter/nvim-treesitter',
	lazy = false,
	opts = {
		ensure_installed = {
			'help',
			'python',
			'javascript',
			'typescript',
			'go',
			'rust',
			'lua',
			'c',
		},
		sync_install = false,
		auto_install = true,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
          autotag = {
            enable = true,
            filetypes = {
                'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'svelte', 'vue', 'tsx', 'jsx', 'rescript',
                'css', 'lua', 'xml', 'php', 'markdown'
            },
        },
	}
}
