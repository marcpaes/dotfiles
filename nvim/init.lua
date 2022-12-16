-- Initialize Packer
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

-- Settings & Keys
require 'settings'
require 'keymaps'

-- Plugins
require 'plugins.packer'
require 'plugins.treesitter'
require 'plugins.telescope'
require 'plugins.lsp'
require 'plugins.terminal'
require 'plugins.lualine'
require 'plugins.neotree'
require 'plugins.whichkey'
require 'plugins.debugger'
