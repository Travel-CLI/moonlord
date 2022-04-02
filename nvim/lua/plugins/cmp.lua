local cmp = require('cmp')
local lspkind = require('lspkind')
cmp.setup{
	snippet = {
		-- REQUIRED - you must specify a snippet engine
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
		end,
	},
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

	sources = cmp.config.sources({
		{ name = 'nvim_lsp' }, -- LSP
		{ name = 'vsnip' },    -- VSnip
		{ name = 'buffer' },   -- Буфферы
	}, {
	}),
	formatting = {
		format = lspkind.cmp_format({
			mode = 'symbol', -- show only symbol annotations
			maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
		})
	}
}

