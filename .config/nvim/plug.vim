call plug#begin()

" Beautiful status line
Plug 'nvim-lualine/lualine.nvim'

" File explorer
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Theme
Plug 'sheerun/vim-polyglot'
Plug 'sainnhe/everforest'

" COC For TSLint, AutoComplete and Prettier
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" LSP
"Plug 'neovim/nvim-lspconfig'
"Plug 'williamboman/nvim-lsp-installer'
"Plug 'tami5/lspsaga.nvim'
"Plug 'folke/lsp-colors.nvim'
"Plug 'onsails/lspkind-nvim'

"Plug 'hrsh7th/cmp-nvim-lsp'
"Plug 'hrsh7th/cmp-buffer'
"Plug 'hrsh7th/nvim-cmp'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'kyazdani42/nvim-web-devicons'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-ts-autotag'

" Flutter
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'

" Copilot
Plug 'github/copilot.vim'

call plug#end()
