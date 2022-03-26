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


	-- LSP
	use {
		"neovim/nvim-lspconfig",
		'williamboman/nvim-lsp-installer',
		config = function()
			require('lsp_installer').on_server_ready(function(server)
				local opts = {}

				-- (optional) Customize the options passed to the server
				-- if server.name == "tsserver" then
				--     opts.root_dir = function() ... end
				-- end

				-- This setup() function is exactly the same as lspconfig's setup function.
				-- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
				server:setup(opts)
			end)
		end
	}

	-- Сниппеты
	use {
		'hrsh7th/cmp-vsnip',
		requires = {{'hrsh7th/vim-vsnip'}}
	}

	-- Автодополнение
	use {
		"hrsh7th/nvim-cmp",
		requires = {
			{"hrsh7th/cmp-nvim-lsp"}, {"hrsh7th/cmp-buffer"}, {"hrsh7th/cmp-path"},
		},
		config = function()
			-- Инициализируем локальную переменную с модулем cmp
			local cmp = require('cmp')

			-- Напишем конфигурацию
			cmp.setup({

					-- Иконки {{{
					formatting = {
					},

					-- }}}

					-- Сниппеты {{{
					-- Сниппеты
					snippet = {

						-- С помощью какого механизма сниппетов будет автодополняться код
						expand = function(args)
							vim.fn["vsnip#anonymous"](args.body) -- VSnip
							-- require('luasnip').lsp_expand(args.body) -- LuaSnip
							-- require('snippy').expand_snippet(args.body) -- Snippy
							-- vim.fn["UltiSnips#Anon"](args.body) -- Ultisnips
						end,
					},
					-- }}}

					-- Хоткеи {{{
					-- Клавиши, которые будут взаимодействовать в nvim-cmp
					mapping = {

						-- Вызов меню автодополнения
						['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
						['<CR>'] = cmp.config.disable, -- Я не люблю, когда вещи автодополняются на <Enter>
						['<C-y>'] = cmp.mapping.confirm({ select = true }), -- А вот на <C-y> вполне ок

						-- Используем <C-e> для того чтобы прервать автодополнение
						['<C-e>'] = cmp.mapping({
								i = cmp.mapping.abort(), -- Прерываем автодополнение
								c = cmp.mapping.close(), -- Закрываем автодополнение
							}),
					},
					-- }}}

					-- Сорняки для автокомплита {{{
					-- Исходники, из которых будут идти варианты для автодополнения
					sources = cmp.config.sources({
							{ name = 'nvim_lsp' }, -- LSP
							{ name = 'vsnip' }, -- VSnip
							-- { name = 'luasnip' }, -- LuaSnip
							-- { name = 'ultisnips' }, -- Ultisnips
							-- { name = 'snippy' }, -- Snippy

							{ name = 'cmp-nvim-lua' }, -- Автодополнение Neovim Lua
						}, {
							{ name = 'buffer' },
						}),
					-- }}}

				})
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
