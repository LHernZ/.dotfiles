local cmd = vim.api.nvim_command
local fn = vim.fn
local packer = nil

local function packer_verify()
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path })
    cmd 'packadd packer.nvim'
  end
end

local function packer_startup()
  if packer == nil then
    packer = require'packer'
    packer.init()
  end

  local use = packer.use
  packer.reset()

  -- Packer
  use 'wbthomason/packer.nvim'

  -- LSP
  use {
    'kabouzeid/nvim-lspinstall',
    requires = {
      'neovim/nvim-lspconfig'
    },
    config = function ()
      require'lhernz.plugins.lspconfig'.init()
    end
  }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = 'TSUpdate',
    config = function ()
      require'lhernz.plugins.treesitter'.init()
    end
  }

  -- Completion
  use {
    'hrsh7th/nvim-compe',
    requires = {
      'wellle/tmux-complete.vim',
      'L3MON4D3/LuaSnip',
      'onsails/lspkind-nvim'
    },
    config = function ()
      require'lhernz.plugins.compe'.init()
      require'lhernz.plugins.lspkind'.init()
    end
  }

  -- Telescope
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = 'rmagatti/session-lens',
    config = function ()
      require'lhernz.plugins.telescope'.init()
    end
  }

  -- Themes
  use {
    'folke/tokyonight.nvim',
    config = function ()
      require'lhernz.plugins.tokyonight'.init()
    end
  }

  -- Git support
  use 'rhysd/git-messenger.vim'
  use {
    'lewis6991/gitsigns.nvim',
    config = function ()
     require'lhernz.plugins.gitsigns'.init()
    end
  }

  -- Sessions
  use {
    'rmagatti/auto-session',
    config = function ()
      require'lhernz.plugins.auto_session'.init()
    end
  }

  -- Utilities
  use 'unblevable/quick-scope'
  use {
      'hoob3rt/lualine.nvim',
      config = function ()
        require'lhernz.plugins.lualine'.init()
      end
  }
  use 'preservim/nerdcommenter'
  use 'romgrk/nvim-treesitter-context'
  use 'kyazdani42/nvim-web-devicons'
  use {
      'voldikss/vim-floaterm',
      config = function ()
        require'lhernz.plugins.floaterm'.init()
      end
    }

  -- Prettier
  use {
    'prettier/vim-prettier',
    run = 'yarn install'
  }
end

local function init()
  packer_verify()
  packer_startup()
end

return {
  init = init
}
