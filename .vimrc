set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-powerline'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'git://git.wincent.com/command-t.git'

Bundle 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
let g:jedi#auto_initialization = 0
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set number
set expandtab ts=2 sw=2 ai

syntax on
filetype indent plugin on

nmap <silent> <C-P> :PymodeRun<CR>
nmap <silent> <C-D> :NERDTreeToggle<CR>

" Compiling C++ and running in one hit
nmap <silent> <F8> :w<CR> :!clear;g++ % -o %:r && ./%:r<CR>


map <C-j> :bn<CR>
map <C-k> :bp<CR>

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

set incsearch
set nu
set hidden
set ai
set pastetoggle=<F3>
set matchpairs+=<:>
let g:Powerline_symbols = "fancy"

" Otherwise powerline will not be visible
" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

let g:pymode_rope = 0
let g:pymode_folding = 0
let g:pymode_options_max_line_length = 100
let g:pymode_options_colorcolumn = 1

autocmd FileType java set tags=~/.tags
set tags=tags;
