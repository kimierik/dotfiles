-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/kimi/.cache/nvim/packer_hererocks/2.1.1774896198/share/lua/5.1/?.lua;/home/kimi/.cache/nvim/packer_hererocks/2.1.1774896198/share/lua/5.1/?/init.lua;/home/kimi/.cache/nvim/packer_hererocks/2.1.1774896198/lib/luarocks/rocks-5.1/?.lua;/home/kimi/.cache/nvim/packer_hererocks/2.1.1774896198/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/kimi/.cache/nvim/packer_hererocks/2.1.1774896198/lib/lua/5.1/?.so"
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
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nµ\1\0\1\b\0\n\1\25*\1\0\0006\2\0\0006\4\1\0009\4\2\0049\4\3\0046\5\1\0009\5\4\0059\5\5\0059\a\6\0B\5\2\0A\2\1\3\15\0\2\0X\4\6€\15\0\3\0X\4\4€9\4\a\3\1\1\4\0X\4\1€K\0\1\0006\4\0\0006\6\1\0009\6\b\0069\6\t\6B\4\2\1K\0\1\0\nstart\15treesitter\tsize\bbuf\22nvim_buf_get_name\bapi\ffs_stat\tloop\bvim\npcall€À\fÔ\1\1\0\5\0\f\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\1\0B\0\2\0029\0\3\0005\2\4\0B\0\2\0016\0\5\0009\0\6\0009\0\a\0'\2\b\0005\3\n\0003\4\t\0=\4\v\3B\0\3\1K\0\1\0\rcallback\1\0\1\rcallback\0\0\rFileType\24nvim_create_autocmd\bapi\bvim\1\6\0\0\6c\blua\bvim\vvimdoc\nquery\finstall\nsetup\20nvim-treesitter\frequire\0" },
    loaded = true,
    path = "/home/kimi/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/kimi/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/kimi/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  sonokai = {
    loaded = true,
    path = "/home/kimi/.local/share/nvim/site/pack/packer/start/sonokai",
    url = "https://github.com/sainnhe/sonokai"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/kimi/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["treesitter-parser-registry"] = {
    loaded = true,
    path = "/home/kimi/.local/share/nvim/site/pack/packer/start/treesitter-parser-registry",
    url = "https://github.com/neovim-treesitter/treesitter-parser-registry"
  },
  undotree = {
    loaded = true,
    path = "/home/kimi/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/kimi/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/home/kimi/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nµ\1\0\1\b\0\n\1\25*\1\0\0006\2\0\0006\4\1\0009\4\2\0049\4\3\0046\5\1\0009\5\4\0059\5\5\0059\a\6\0B\5\2\0A\2\1\3\15\0\2\0X\4\6€\15\0\3\0X\4\4€9\4\a\3\1\1\4\0X\4\1€K\0\1\0006\4\0\0006\6\1\0009\6\b\0069\6\t\6B\4\2\1K\0\1\0\nstart\15treesitter\tsize\bbuf\22nvim_buf_get_name\bapi\ffs_stat\tloop\bvim\npcall€À\fÔ\1\1\0\5\0\f\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\1\0B\0\2\0029\0\3\0005\2\4\0B\0\2\0016\0\5\0009\0\6\0009\0\a\0'\2\b\0005\3\n\0003\4\t\0=\4\v\3B\0\3\1K\0\1\0\rcallback\1\0\1\rcallback\0\0\rFileType\24nvim_create_autocmd\bapi\bvim\1\6\0\0\6c\blua\bvim\vvimdoc\nquery\finstall\nsetup\20nvim-treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
