-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Статуслайн
  use {
	  'feline-nvim/feline.nvim',
	  config = function()
		  require('feline').setup()
	  end
  }

  -- Подсветка синтаксиса
  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate',
	  config = function()

		  -- Загружаем конфиги treesitter
		  require'nvim-treesitter.configs'.setup {

			  -- "maintained" - основные пакеты для подсветки, которые поддерживаются разработчиком
			  ensure_installed = "maintained",

			  -- Асинхронная установка пакетов
			  sync_install = false,

			  -- Конфигурация подсветки
			  highlight = {

				  -- Включаем подсветку Neovim treesitter
				  enable = true,

				  -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
				  -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
				  -- Using this option may slow down your editor, and you may see some duplicate highlights.
				  -- Instead of true it can also be a list of languages
				  additional_vim_regex_highlighting = false,
			  },
		  }
	  end
  }

  -- Цветовая схема
  use {
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  tag = 'v1.*',
	  config = function()

		  -- Конфигурация цветовой схемы
		  require('rose-pine').setup({

			  -- Берём более светлую версию
			  dark_variant = 'moon'
		  })

		  -- Включаем цветовую схему
		  vim.cmd('colorscheme rose-pine')
	  end
  }
end)
