set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Installed plugins
" Nerdtree
Plugin 'scrooloose/nerdtree'
let NERDTreeShowHidden=1
set splitright
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Gitgutter
Plugin 'airblade/vim-gitgutter'

" Vim Airline 
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
set laststatus=2
let g:airline_powerline_fonts = 1

" Vim solaraized
Bundle 'altercation/vim-colors-solarized'
set background=dark

" Ctrl P
Bundle 'ctrlpvim/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" ALE
Plug 'dense-analysis/ale'

" Fix backspace not working
:set backspace=indent,eol,start

" Syntax highlighting
:syntax on

" Enable numbering
:set number

" tab width to 2
set shiftwidth=2
set softtabstop=2

" Use system clipboard
set clipboard=unnamed

" Format yaml properly
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme solarized
