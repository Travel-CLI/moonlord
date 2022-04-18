-- Горячие клавиши для Neovim
-- Author: Daniil Shilo
-- Email: crckhd10@gmail.com
-- License: MIT

-- Переменные
local map = vim.api.nvim_set_keymap                                                       -- Метод, для назначения новых комбинаций

-- Настройки
vim.g.mapleader = ' '                                                                     -- Используем Space, как клавишу для альтернативных хотекеев

-- Экраны
map('n', '<s-->', '<cmd>vertical resize -5<CR>', {noremap = true})

-- LSP (все горячие клавиши начинаются с g), кроме ховера
map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', {noremap = true})                       -- Ховер для объекта
map('n', 'gf', '<cmd>lua vim.lsp.buf.formatting()<CR>', {noremap = true})                 -- Форматировать документ
map('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>', {noremap = true})                -- Действия с кодом
map('n', 'gR', '<cmd>lua vim.lsp.buf.rename()<CR>', {noremap = true})                     -- Переименовать объект
map('n', 'gd', '<cmd>Telescope lsp_definitions<CR>', {noremap = true})                    -- Объявления в LSP
map('n', 'gr', '<cmd>Trouble lsp_references<CR>', {noremap = true})                       -- Референсы в LSP

-- Плагины
map('n', '<leader>v', '<cmd>NvimTreeToggle<CR>', {noremap = true})                        -- Открыть Neovim Tree

map('n', '<leader>p', '<cmd>Telescope oldfiles<CR>', {noremap = true})                    -- Просмотр недавних файлов
map('n', '<leader>o', '<cmd>Telescope git_files<CR>', {noremap = true})                   -- Поиск файлов
map('n', '<leader>b', '<cmd>Telescope git_branches<CR>', {noremap = true})                -- Ветки в Git
map('n', '<leader>f', '<cmd>Telescope live_grep<CR>', {noremap = true})                   -- Поиск строки
map('n', '<leader>q', '<cmd>Telescope buffers<CR>', {noremap = true})                     -- Буфферы
map('n', '<leader>l', '<cmd>Telescope git_status<CR>', {noremap = true})                  -- Изменения в Git

map('n', '<leader>s', '<cmd>SymbolsOutline<CR>', {noremap = true})                        -- Структура для файла

map('n', '<A-c>', '<cmd>bd<CR>', {noremap = true})                                        -- Закрыть буффер
map('n', '<A-,>', '<cmd>BufferLineCyclePrev<CR>', {noremap = true})                       -- Перейти в предыдущий буффер
map('n', '<A-.>', '<cmd>BufferLineCycleNext<CR>', {noremap = true})                       -- Перейти в следующий буффер
map('n', '<A->>', '<cmd>BufferLineMoveNext<CR>', {noremap = true})                        -- Закрыть буффер слева
map('n', '<A-<>', '<cmd>BufferLineMovePrev<CR>', {noremap = true})                        -- Закрыть буффер справа

map('n', '<leader>z', '<cmd>ZenMode<CR>', {noremap = true})                               -- Закрыть буффер справа

map('n', '<leader>x', '<cmd>TroubleToggle<CR>', {noremap = true})                         -- Открыть меню с проблемами LSP
