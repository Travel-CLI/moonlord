-- Горячие клавиши для Neovim

-- Переменные
local map = vim.api.nvim_set_keymap              -- Метод, для назначения новых комбинаций

-- Настройки
vim.g.mapleader = ' '                            -- Используем Space, как клавишу для альтернативных хотекеев

map('n', '<leader>v', '<cmd>NvimTreeToggle<CR>', {noremap = true})
