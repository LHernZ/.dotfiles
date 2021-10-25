local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  -- Packer
  use 'wbthomason/packer.nvim'

  -- Treesitter
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  -- LSP
  use 'neovim/nvim-lspconfig'

  use 'onsails/lspkind-nvim'

  -- Telescope
  use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/plenary.nvim'}}}

  -- FORMAT
  use 'lukas-reineke/format.nvim'

  -- Icons
  use 'kyazdani42/nvim-web-devicons'

  -- CMP
  use {
    'hrsh7th/nvim-cmp',
    requires = {'L3MON4D3/LuaSnip', 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-path', 'hrsh7th/cmp-buffer', 'saadparwaiz1/cmp_luasnip'}
  }

  -- Utils
  use 'voldikss/vim-floaterm'

  -- Theme
  use 'folke/tokyonight.nvim'
  if packer_bootstrap then require('packer').sync() end
end)
