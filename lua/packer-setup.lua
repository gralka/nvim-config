local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer-setup.lua source <afile> | PackerSync
  augroup end
]])

local packer_bootstrap = ensure_packer()

return require('packer').startup(function (use)
  use 'wbthomason/packer.nvim'

  use { 'andymass/vim-matchup', event = 'VimEnter' }

  -- Disable codeium; use copilot instead.
  --
  -- use {
  --   'Exafunction/codeium.vim',
  --   config = function ()
  --     vim.keymap.set('i', '<C-g>', function () return vim.fn['codeium#Accept']() end, { expr = true })
  --     vim.keymap.set('i', '<C-d>', function () return vim.fn['codeium#Accept']() end, { expr = true })
  --     vim.keymap.set('i', '<C-f>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
  --     vim.keymap.set('i', '<C-b>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
  --     vim.keymap.set('i', '<C-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
  --   end
  -- }

  use { 'neoclide/coc.nvim', branch = 'release' }
  use 'neoclide/coc-tsserver'
  use 'iamcco/coc-angular'

  use { 'dracula/vim', as = 'dracula' }

  use { 'ellisonleao/gruvbox.nvim', as = 'gruvbox' }

  use {
    'github/copilot.vim',
    as = 'copilot',
    config = function ()
      vim.g.copilot_no_tab_map = true
      vim.g.copilot_assume_mapped = true

      vim.api.nvim_set_keymap("i", "<C-d>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
    end,
  }

  use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }

  use 'lewis6991/gitsigns.nvim'

  use 'mbbill/undotree'

  use {
    'numToStr/Comment.nvim',
    config = function () require('Comment').setup() end
  }

  use 'nvim-lualine/lualine.nvim'

  use 'szw/vim-maximizer'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = {
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'make',
      },
    }
  }

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
    tag = 'nightly'
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  use 'tpope/vim-fugitive'

  use 'tpope/vim-surround'

  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      'neovim/nvim-lspconfig',
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',

      -- Autocompletion
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',

      -- Snippets
      'L3MON4D3/LuaSnip',
      'rafamadriz/friendly-snippets',
    }
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
