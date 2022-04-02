require("zen-mode").setup {
	window = {
		width = 165,
		height = 80,
		options = {
			signcolumn = "no",
			number = true,
			list = false,
		},
	},
	plugins = {
		tmux = {
			enabled = true
		}
	}
}

