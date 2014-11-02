set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'

" Vundles
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Raimondi/delimitMate'
Plugin 'bling/vim-airline.git'
Plugin 'sophacles/vim-processing.git'
Plugin 'guns/vim-clojure-static.git'
Plugin 'tpope/vim-fireplace.git'
Plugin 'tpope/vim-classpath.git'
Plugin 'tpope/vim-markdown.git'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'vim-scripts/taglist.vim.git'

call vundle#end()

syntax enable
set t_Co=256
set background=dark
colorscheme solarized
set number
set laststatus=2
set wildmenu
set encoding=utf-8
filetype plugin indent on

set autoindent
set softtabstop=4
set shiftwidth=4
set expandtab
set incsearch
set ignorecase
set smartcase
set hlsearch

" Key mappings
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 0

let g:ctrlp_map = ';'

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <S-J> <C-]>

" syntastic config
let g:syntastic_disabled_filetypes=['c', 'cpp', 'cc']
let g:syntastic_javascript_checkers = ['jshint']

" putty fix
set mouse=a
