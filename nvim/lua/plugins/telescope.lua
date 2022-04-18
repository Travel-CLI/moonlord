local telescope = require('telescope')

telescope.setup({

	-- Дефолтная конфигурация
	defaults = {
		prompt_prefix = '>> ',
		selection_caret = '▶ ',
	},

	-- Расширения
	extensions = {

		-- FZF
		fzf = {
			fuzzy = true,                    -- false will only do exact matching
			override_generic_sorter = true,  -- override the generic sorter
			override_file_sorter = true,     -- override the file sorter
			case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
		}
	}
})

-- Загружаем FZF
require('telescope').load_extension('fzf')
