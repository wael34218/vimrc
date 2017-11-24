set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-powerline'
Plugin 'Lokaltog/vim-easymotion'

Bundle 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
let g:jedi#auto_initialization = 0

" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

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
