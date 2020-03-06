
" Plugin installation section
call plug#begin('~/.vim/plugged')

" Add gruvbox color scheme
Plug 'morhetz/gruvbox'
" Auto update ctags
Plug 'craigemery/vim-autotag'

call plug#end()

" turn hybrid line numbers on
:set number relativenumber
:set nu rnu

" Add ctags
set tags=tags;

" Add gruvbox color scheme
colorscheme gruvbox
set background=dark

" Tab to spaces
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab     "expand tabs to spaces

" Copied from mathiasbynens dotfiles

" Make Vim more useful
set nocompatible
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Highlight current line
set cursorline

" Create backup folders and put swp files there
if !isdirectory($HOME."/.vim/backup")
  call mkdir($HOME."/.vim/backup", "p")
endif
if !isdirectory($HOME."/.vim/swap")
  call mkdir($HOME."/.vim/swap", "p")
endif
if !isdirectory($HOME."/.vim/undo")
  call mkdir($HOME."/.vim/undo", "p")
endif

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
