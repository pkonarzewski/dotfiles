call plug#begin()
  Plug 'morhetz/gruvbox'
  Plug 'vim-airline/vim-airline'
  Plug 'scrooloose/nerdtree'
  Plug 'jiangmiao/auto-pairs'
  Plug 'preservim/nerdcommenter'
call plug#end()

colorscheme gruvbox

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
