-- Горячие клавиши для Neovim
-- Author: Daniil Shilo
-- Email: crckhd10@gmail.com
-- License: MIT

-- Переменные
local map = vim.api.nvim_set_keymap                                                       -- Метод, для назначения новых комбинаций

-- Настройки
vim.g.mapleader = ' '                                                                     -- Используем Space, как клавишу для альтернативных хотекеев

-- Плагины
map('n', '<leader>v', '<cmd>NvimTreeToggle<CR>', {noremap = true})                        -- Открыть Neovim Tree

map('n', '<leader>p', '<cmd>Telescope find_files<CR>', {noremap = true})                  -- Поиск файлов
map('n', '<leader>f', '<cmd>Telescope grep_string<CR>', {noremap = true})                 -- Поиск строки
map('n', '<leader>b', '<cmd>Telescope git_branches<CR>', {noremap = true})                -- Ветки в Git
map('n', '<leader>o', '<cmd>Telescope buffers<CR>', {noremap = true})                     -- Буфферы
map('n', 'gr', '<cmd>Telescope lsp_references<CR>', {noremap = true})                     -- Референсы в LSP
map('n', 'gd', '<cmd>Telescope lsp_definitions<CR>', {noremap = true})                    -- Объявления в LSP

map('n', '<leader>s', '<cmd>SymbolsOutline<CR>', {noremap = true})                        -- Структура для файла

map('n', '<leader>q', '<cmd>BufferLinePick<CR>', {noremap = true})                        -- Быстро перейти в буффер
map('n', '<leader>w', '<cmd>BufferLinePickClose<CR>', {noremap = true})                   -- Быстро закрыть буффер
map('n', '<A-,>', '<cmd>BufferLineCyclePrev<CR>', {noremap = true})                       -- Перейти в предыдущий буффер
map('n', '<A-.>', '<cmd>BufferLineCycleNext<CR>', {noremap = true})                       -- Перейти в следующий буффер
map('n', '<A->>', '<cmd>BufferLineCloseLeft<CR>', {noremap = true})                       -- Закрыть буффер слева
map('n', '<A-<>', '<cmd>BufferLineCloseRight<CR>', {noremap = true})                      -- Закрыть буффер справа

map('n', '<leader>z', '<cmd>ZenMode<CR>', {noremap = true})                               -- Закрыть буффер справа
