-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Статуслайн
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', 'arkav/lualine-lsp-progress', opt = true },
		config = function()
			require('plugins/lualine')
		end
	}

	-- LSP сервер
	use 'neovim/nvim-lspconfig'

	-- Удобное меню для обозрения проблем LSP
	use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup {}
		end
	}

	-- Автодополнение
	use {
		'hrsh7th/nvim-cmp',
		requires = {
			'hrsh7th/cmp-vsnip',
			'hrsh7th/vim-vsnip',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-path',
		},
		config = function()
			require('plugins/cmp')
		end
	}

	use {
		'onsails/lspkind-nvim',
		config = function ()
			require('plugins/lspkind')
		end
	}

	-- Структура для LSP
	use {
		'simrat39/symbols-outline.nvim',
		config = function()
			require('plugins/symbols-outline')
		end
	}

	-- Инсталлер для серверов LSP
	use {
		'williamboman/nvim-lsp-installer',
		config = function()
			require('plugins/lsp-installer')
		end
	}

	-- Тема
	use({
		"catppuccin/nvim",
		as = "catppuccin",
	})

	-- Ещё одна тема
	use {
		'eddyekofo94/gruvbox-flat.nvim',
		config = function()
			--vim.cmd[[colorscheme gruvbox-flat]]
		end
	}

	-- И ещё одна тема
	use {
		'shaunsingh/nord.nvim',
		config = function()

			-- Установить цвета GUI в терминале
			vim.o.termguicolors = true
			vim.cmd[[color nord]]
		end
	}

	-- Поиск по файлам
	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} },
		config = function()
			require('plugins/telescope')
		end
	}

	-- Проводник
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icon
		},
		config = function()
			require('plugins/nvimtree')
		end
	}

	-- Стутусбар для буферов
	use {
		'akinsho/bufferline.nvim',
		requires = 'kyazdani42/nvim-web-devicons',
		config = function()
			require('plugins/bufline')
		end
	}

	-- Zen-mode
	use {
		"folke/zen-mode.nvim",
		config = function()
			require('plugins/zen_mode')
		end
	}

	-- Поддержка Git
	use {
		'lewis6991/gitsigns.nvim',
		tag = 'release',
		config = function ()
			require('plugins/gitsigns')
		end
	}

	-- Тесты в Neovim
	use {
		"rcarriga/vim-ultest",
		requires = {"vim-test/vim-test"},
		run = ":UpdateRemotePlugins"
	}
end)
