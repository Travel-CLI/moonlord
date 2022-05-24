local telescope = require('telescope');

telescope.setup({

	-- Дефолтная конфигурация
	defaults = {
		prompt_prefix = '>> ',
		selection_caret = '▶ ',
	},

	pickers = {
		grep_string = {
			layout_strategy = 'vertical',
			layout_config = {
				width=0.5
			}
		}
	},

	-- Расширения
    extensions = {

		-- Быстрый поиск с помощью fzy
        fzy_native = {
            override_generic_sorter = true,
            override_file_sorter = true,
        }
    }
})

-- Загружаем fzy
require('telescope').load_extension('fzy_native')
