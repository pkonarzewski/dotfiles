call plug#begin()
  Plug 'morhetz/gruvbox'
  Plug 'vim-airline/vim-airline'
  Plug 'scrooloose/nerdtree'
  Plug 'jiangmiao/auto-pairs'
  Plug 'preservim/nerdcommenter'
  Plug 'jpalardy/vim-slime', { 'for': 'python' }
  Plug 'hanschen/vim-ipython-cell', { 'for': 'python' }
  Plug 'davidhalter/jedi-vim'
call plug#end()

colorscheme gruvbox

set nocompatible
filetype off
set encoding=utf-8
syntax enable
set number
set noswapfile
set hlsearch
set ignorecase
set incsearch
set scrolloff=7
set backspace=indent,eol,start
set expandtab
set autoindent
set fileformat=unix

inoremap jk <ESC>

" NERDCommenter
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

" NERDTree
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 0

nmap <C-b> :NERDTreeToggle<CR>
