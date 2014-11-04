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
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'tpope/vim-markdown.git'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'vim-scripts/taglist.vim.git'
Plugin 'vim-scripts/Conque-GDB'
Plugin 'rking/ag.vim'

call vundle#end()

syntax enable
colorscheme solarized
filetype plugin indent on

set t_Co=256
set background=dark
set number
set laststatus=2
set wildmenu
set encoding=utf-8
set showmatch       " show matching brackets
set autoindent
set softtabstop=4
set shiftwidth=4
set expandtab
set incsearch
set ignorecase
set smartcase
set hlsearch
set cursorline      " highlight current line
set lazyredraw
set hidden          " hide buffers when abandoned
set showcmd         " show last command
set scrolloff=5
set ttyfast
set ruler

" Doxygen highlight
let g:load_doxygen_syntax = 1

" Key mappings
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 0

let g:ctrlp_map = '§'

let mapleader = ','

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <S-J> <C-]>

nnoremap <leader><space> :nohlsearch<CR>

" buffer navigation
noremap <silent> <C-n> :bprev<CR>
noremap <silent> <C-m> :bnext<CR>

nmap <leader>s :set list!<CR>       " toggle whitespace visibility

" syntastic config
let g:syntastic_disabled_filetypes=['c', 'cpp', 'cc']
let g:syntastic_javascript_checkers = ['jshint']

" CtrlP config
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0

" YCM config
let g:ycm_confirm_extra_conf = 0

" DoxygenToolkit config
let g:DoxygenToolkit_authorName = 'Matti Määttä'

" NERDTree
let NERDTreeMinimalUI=1

" putty fix
set mouse=a
