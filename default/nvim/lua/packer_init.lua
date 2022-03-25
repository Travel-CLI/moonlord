-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Статуслайн
  use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'kyazdani42/nvim-web-devicons', opt = true },
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
		  }
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

  -- Цветовая схема
  use {
	  'eddyekofo94/gruvbox-flat.nvim',
	  config = function()
		  vim.cmd('colorscheme gruvbox-flat')
	  end
  }

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

  -- Подсветка синтаксиса
  use {
	  'sheerun/vim-polyglot'
  }
end)
