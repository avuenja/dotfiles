local status, packer = pcall(require, 'packer')
if (not status) then
  print('Packer is not installed')
  return
end

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colorscheme
  use 'folke/tokyonight.nvim'

  -- File icons
  use 'kyazdani42/nvim-web-devicons'

  -- Statusline
  use 'nvim-lualine/lualine.nvim'

  -- Vscode-like pictograms
  use 'onsails/lspkind.nvim'

  -- Completion
  -- nvim-cmp source for buffer words
  -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'

  -- Snippet
  use 'L3MON4D3/LuaSnip'

  -- LSP
  use 'neovim/nvim-lspconfig'

  -- LSP UIs
  use 'glepnir/lspsaga.nvim'

  -- LSP Installer help
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Autotag & Autopairs
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  -- Telescope
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- Tabs
  use { 'akinsho/bufferline.nvim', tag = 'v2.*' }

  -- Color highlight
  use 'norcalli/nvim-colorizer.lua'

  -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  -- Prettier plugin for Neovim's built-in LSP client
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'MunifTanjim/prettier.nvim'

  -- Git
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim'
end)
