local telescope = require('telescope')

telescope.setup({

	-- Дефолтная конфигурация
	defaults = {
		prompt_prefix = '>> ',
		selection_caret = '▶ ',
	},
})
