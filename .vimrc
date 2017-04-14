" VIM PLUG
call plug#begin('~/.vim/plugged')
" PLUGINS
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'valloric/youcompleteme'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'slim-template/vim-slim'
" COLOR SCHEMES
Plug 'morhetz/gruvbox'
call plug#end()

" CONFIG
set number
set expandtab
set tabstop=2
set hlsearch
set incsearch
set noreadonly
syntax on
colorscheme gruvbox
set background=dark
let g:mapleader=','

" MAPPINGS
map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)

" NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
