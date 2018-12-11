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
Bundle 'vim-airline/vim-airline'
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

" Dockerfile
Bundle 'ekalinin/Dockerfile.vim'

" Terraform
Bundle 'hashivim/vim-terraform'

" Json
Bundle 'elzr/vim-json'
" disable concealing
let g:vim_json_syntax_conceal = 0

" Table Mode
Plugin 'dhruvasagar/vim-table-mode'

" Python Mode
Bundle 'python-mode/python-mode'
let g:pymode_options = 1
let g:pymode_folding = 0
let g:pymode_trim_whitespaces = 1
let g:pymode_options_max_line_length = 120
let g:pymode_doc = 0
let g:pymode_lint_on_write = 1
let g:pymode_lint_on_fly = 0
let g:pymode_lint_message = 0
let g:pymode_indent = 1
let g:pymode_lint_options_mccabe = { 'complexity': 7 }

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

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme solarized
