" Fundamentals
"
scriptencoding utf-8

syntax enable

set nocompatible
set number
set fileencodings=utf-8
set encoding=utf-8
set title
set autoindent
set background=dark
set nobackup
set hlsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
set expandtab
set ignorecase
set noswapfile

set shell=fish
set backupskip=/tmp/*,/private/tmp/*

set lazyredraw
set inccommand=split
set smarttab

set cursorline
set colorcolumn=80

set clipboard+=unnamedplus

" Indents
"
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set softtabstop=2
set ai
set si
set nowrap
set backspace=start,eol,indent

" Finding files
set path+=**
set wildignore+=*/node_modules/*

" Leadermap
"
let mapleader = " "

" Imports
"
runtime ./plug.vim
runtime ./maps.vim
runtime ./color.vim

