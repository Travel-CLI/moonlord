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
			require('lualine').setup {
				options = {
					icons_enabled = true,
					theme = 'auto',
					component_separators = { left = '', right = ''},
					section_separators = { left = '', right = ''},
					disabled_filetypes = {},
					always_divide_middle = true,
					globalstatus = false,
				},
				sections = {
					lualine_c = {'filename', 'lsp_progress'},
					lualine_y = {'progress'},
					lualine_z = {'location'}
				},
			}
		end
	}

	-- LSP сервер
	use 'neovim/nvim-lspconfig'

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
		config = function()
			vim.cmd[[colorscheme catppuccin]]
		end
	})

	-- Поиск по файлам
	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} },
		config = function()
			require('telescope').setup({
					defaults = {
						layout_config = {
							vertical = { width = 0.5 }
							-- other layout configuration here
						},
						-- other defaults configuration here
					},
					-- other configuration values here
				})
		end
	}

	-- Проводник
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icon
		},
		config = function() require'nvim-tree'.setup {} end
	}

end)
