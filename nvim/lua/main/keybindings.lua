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

-- Плагины
-- NvimTree
map('n', '<leader>v', '<cmd>NvimTreeToggle<CR>', {noremap = true})                        -- Открыть Neovim Tree

-- LEGACY: Более не используем Telescope
-- INFO: Вместо Telescope теперь используется FzfLua
-- @see https://github.com/ibhagwan/fzf-lua
--[[
map('n', 'gd', '<cmd>Telescope lsp_definitions<CR>', {noremap = true})                    -- Объявления в LSP
map('n', 'gr', '<cmd>Trouble lsp_references<CR>', {noremap = true})                       -- Референсы в LSP
map('n', '<leader>p', '<cmd>Telescope oldfiles<CR>', {noremap = true})                    -- Просмотр недавних файлов
map('n', '<leader>o', '<cmd>Telescope git_files<CR>', {noremap = true})                   -- Поиск файлов
map('n', '<leader>b', '<cmd>Telescope git_branches<CR>', {noremap = true})                -- Ветки в Git
map('n', '<leader>f', '<cmd>Telescope live_grep<CR>', {noremap = true})                   -- Поиск строки
map('n', '<leader>q', '<cmd>Telescope buffers<CR>', {noremap = true})                     -- Буфферы
map('n', '<leader>l', '<cmd>Telescope git_status<CR>', {noremap = true})                  -- Изменения в Git
]]

-- FzfLua
map('n', 'gd', '<cmd>FzfLua lsp_definitions<CR>', {noremap = true})                    -- Объявления в LSP
map('n', '<leader>p', '<cmd>FzfLua oldfiles<CR>', {noremap = true})                    -- Просмотр недавних файлов
map('n', '<leader>o', '<cmd>FzfLua git_files<CR>', {noremap = true})                   -- Поиск файлов
map('n', '<leader>b', '<cmd>FzfLua git_branches<CR>', {noremap = true})                -- Ветки в Git
map('n', '<leader>f', '<cmd>FzfLua live_grep<CR>', {noremap = true})                   -- Поиск строки
map('n', '<leader>q', '<cmd>FzfLua buffers<CR>', {noremap = true})                     -- Буфферы
map('n', '<leader>l', '<cmd>FzfLua git_status<CR>', {noremap = true})                  -- Изменения в Git


-- SymbolsOutline
map('n', '<leader>s', '<cmd>SymbolsOutline<CR>', {noremap = true})                        -- Структура для файла

-- BufferLine
map('n', '<A-c>', '<cmd>bd<CR>', {noremap = true})                                        -- Закрыть буффер
map('n', '<A-,>', '<cmd>BufferLineCyclePrev<CR>', {noremap = true})                       -- Перейти в предыдущий буффер
map('n', '<A-.>', '<cmd>BufferLineCycleNext<CR>', {noremap = true})                       -- Перейти в следующий буффер
map('n', '<A->>', '<cmd>BufferLineMoveNext<CR>', {noremap = true})                        -- Закрыть буффер слева
map('n', '<A-<>', '<cmd>BufferLineMovePrev<CR>', {noremap = true})                        -- Закрыть буффер справа

-- ZenMode
map('n', '<leader>z', '<cmd>ZenMode<CR>', {noremap = true})                               -- Закрыть буффер справа

-- Trouble
map('n', '<leader>x', '<cmd>TroubleToggle<CR>', {noremap = true})                         -- Открыть меню с проблемами LSP
map('n', 'gr', '<cmd>Trouble lsp_references<CR>', {noremap = true})                       -- Референсы в LSP
