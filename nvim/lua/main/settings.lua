-- Главные настройки для Neovim

-- Переменные
local opt = vim.opt                           -- Переменная для настройки опций Neovim
local g = vim.g                               -- Глобальные переменные

-- Настройки
-- Поиск
opt.ignorecase = true                         -- Игнорировать регистр при поиске
opt.smartcase = true                          -- Не игнорировать регистр, если есть символы в верхнем регистре
opt.showmatch = true                          -- Подсвечивать найденные текстовые объекты

-- Фикс для новых панелей в Neovim
opt.splitright = true                         -- Вертикальные сплиты становятся справа
opt.splitbelow = true                         -- Горизонтальные сплиты становятся снизу

-- Цветовая тема
opt.termguicolors = true                      -- Включаем поддержку всех цветов (24bit)

-- Табы
opt.expandtab = false                         -- Используем табы по умолчанию
opt.shiftwidth = 4                            -- 4 пробела == 1 таб, когда сдвигаем с помощью "<", ">"
opt.tabstop = 4                               -- 1 таб == 4 пробела в UI
opt.smartindent = true                        -- Подстраивать новые строки под предыдущий отступ

-- CPU
--opt.updatetime = 400                        -- Милисекунд до тригера 'document_highlight'
opt.lazyredraw = true                         -- Не перерисовывать при выполнении скриптов
opt.hidden = true                             -- Не запрашивать сохранение буфера при переключении
opt.history = 100                             -- Сохранять 100 изменений в памяти
opt.synmaxcol = 1024                          -- Не подсвечивать длинные строки

-- Важные настройки
opt.clipboard = 'unnamedplus'                 -- Используем системный буфер обмена
vim.opt.fixeol = false                        -- Отключаем дополнение файлов в конце
opt.completeopt = 'menuone,noselect'          -- Автодополнение (встроенное в Neovim)
vim.cmd [[autocmd BufEnter * set fo-=c fo-=r fo-=o]] -- Не автокомментировать новые линии при переходе на новую строку

-- Выключение встроенных плагинов
-- https://www.reddit.com/r/neovim/comments/p1qlbn/help_speeding_up_startup_time_disabling_builtin/
local builtInPlugins = {
  "zip",
  "zipPlugin",
  "gzip",
  "tar",
  "tarPlugin",
  "getscript",
  "getscriptPlugin",
  "rrhelper",
  "vimball",
  "vimballPlugin",
  "2html_plugin",
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  "logipat"
}

for null, plugin in pairs(builtInPlugins) do
  g["loaded_" .. plugin] = 1
end
