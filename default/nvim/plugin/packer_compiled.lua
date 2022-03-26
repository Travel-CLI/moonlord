-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/crckhd/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/crckhd/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/crckhd/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/crckhd/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/crckhd/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/crckhd/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/crckhd/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/crckhd/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/crckhd/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["gruvbox-flat.nvim"] = {
    config = { "\27LJ\2\2<\0\0\2\0\3\0\0056\0\0\0009\0\1\0'\1\2\0B\0\2\1K\0\1\0\29colorscheme gruvbox-flat\bcmd\bvim\0" },
    loaded = true,
    path = "/home/crckhd/.local/share/nvim/site/pack/packer/start/gruvbox-flat.nvim",
    url = "https://github.com/eddyekofo94/gruvbox-flat.nvim"
  },
  ["lualine-lsp-progress"] = {
    loaded = true,
    path = "/home/crckhd/.local/share/nvim/site/pack/packer/start/lualine-lsp-progress",
    url = "https://github.com/arkav/lualine-lsp-progress"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\2Š\3\0\0\4\0\19\0\0236\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\t\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0024\3\0\0=\3\b\2=\2\n\0015\2\f\0005\3\v\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\2=\2\18\1B\0\2\1K\0\1\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_c\1\0\0\1\3\0\0\rfilename\17lsp_progress\foptions\1\0\0\23disabled_filetypes\23section_separators\1\0\2\tleft\bî‚°\nright\bî‚²\25component_separators\1\0\2\tleft\bî‚±\nright\bî‚³\1\0\4\17globalstatus\1\25always_divide_middle\2\ntheme\tauto\18icons_enabled\2\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/crckhd/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\2;\0\1\3\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimÑ\3\1\0\a\0\31\00086\0\0\0'\1\1\0B\0\2\0029\1\2\0005\2\3\0004\3\0\0=\3\4\0025\3\6\0003\4\5\0=\4\a\3=\3\b\0025\3\f\0009\4\t\0009\5\t\0009\5\n\5B\5\1\0025\6\v\0B\4\3\2=\4\r\0039\4\14\0009\4\15\4=\4\16\0039\4\t\0009\4\17\0045\5\18\0B\4\2\2=\4\19\0039\4\t\0005\5\21\0009\6\t\0009\6\20\6B\6\1\2=\6\22\0059\6\t\0009\6\23\6B\6\1\2=\6\24\5B\4\2\2=\4\25\3=\3\t\0029\3\14\0009\3\26\0034\4\4\0005\5\27\0>\5\1\0045\5\28\0>\5\2\0045\5\29\0>\5\3\0044\5\3\0005\6\30\0>\6\1\5B\3\3\2=\3\26\2B\1\2\1K\0\1\0\1\0\1\tname\vbuffer\1\0\1\tname\17cmp-nvim-lua\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-y>\1\0\1\vselect\2\fconfirm\t<CR>\fdisable\vconfig\14<C-Space>\1\0\0\1\3\0\0\6i\6c\rcomplete\fmapping\fsnippet\vexpand\1\0\0\0\15formatting\1\0\0\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/home/crckhd/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/crckhd/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/crckhd/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/crckhd/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/crckhd/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/crckhd/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/crckhd/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\2Œ\1\0\0\5\0\n\0\r6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\b\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2=\2\t\1B\0\2\1K\0\1\0\rdefaults\1\0\0\18layout_config\1\0\0\rvertical\1\0\0\1\0\1\nwidth\4\0€€€ÿ\3\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/crckhd/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/home/crckhd/.local/share/nvim/site/pack/packer/start/vim-polyglot",
    url = "https://github.com/sheerun/vim-polyglot"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/crckhd/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\2Œ\1\0\0\5\0\n\0\r6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\b\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2=\2\t\1B\0\2\1K\0\1\0\rdefaults\1\0\0\18layout_config\1\0\0\rvertical\1\0\0\1\0\1\nwidth\4\0€€€ÿ\3\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\2;\0\1\3\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimÑ\3\1\0\a\0\31\00086\0\0\0'\1\1\0B\0\2\0029\1\2\0005\2\3\0004\3\0\0=\3\4\0025\3\6\0003\4\5\0=\4\a\3=\3\b\0025\3\f\0009\4\t\0009\5\t\0009\5\n\5B\5\1\0025\6\v\0B\4\3\2=\4\r\0039\4\14\0009\4\15\4=\4\16\0039\4\t\0009\4\17\0045\5\18\0B\4\2\2=\4\19\0039\4\t\0005\5\21\0009\6\t\0009\6\20\6B\6\1\2=\6\22\0059\6\t\0009\6\23\6B\6\1\2=\6\24\5B\4\2\2=\4\25\3=\3\t\0029\3\14\0009\3\26\0034\4\4\0005\5\27\0>\5\1\0045\5\28\0>\5\2\0045\5\29\0>\5\3\0044\5\3\0005\6\30\0>\6\1\5B\3\3\2=\3\26\2B\1\2\1K\0\1\0\1\0\1\tname\vbuffer\1\0\1\tname\17cmp-nvim-lua\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-y>\1\0\1\vselect\2\fconfirm\t<CR>\fdisable\vconfig\14<C-Space>\1\0\0\1\3\0\0\6i\6c\rcomplete\fmapping\fsnippet\vexpand\1\0\0\0\15formatting\1\0\0\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: gruvbox-flat.nvim
time([[Config for gruvbox-flat.nvim]], true)
try_loadstring("\27LJ\2\2<\0\0\2\0\3\0\0056\0\0\0009\0\1\0'\1\2\0B\0\2\1K\0\1\0\29colorscheme gruvbox-flat\bcmd\bvim\0", "config", "gruvbox-flat.nvim")
time([[Config for gruvbox-flat.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\2Š\3\0\0\4\0\19\0\0236\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\t\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0024\3\0\0=\3\b\2=\2\n\0015\2\f\0005\3\v\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\2=\2\18\1B\0\2\1K\0\1\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_c\1\0\0\1\3\0\0\rfilename\17lsp_progress\foptions\1\0\0\23disabled_filetypes\23section_separators\1\0\2\tleft\bî‚°\nright\bî‚²\25component_separators\1\0\2\tleft\bî‚±\nright\bî‚³\1\0\4\17globalstatus\1\25always_divide_middle\2\ntheme\tauto\18icons_enabled\2\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
