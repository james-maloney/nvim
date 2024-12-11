return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"vim", "lua", "vimdoc",
				"html", "css", "go", "javascript", "typescript", "cue", "json", "yaml", "toml", "rust", "python", "bash",
				"dockerfile", "graphql", "jsonc", "lua", "markdown", "regex", "tsx", "vue", "yaml", "zig"
			},
		},
	},
}
