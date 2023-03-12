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
	}
}
