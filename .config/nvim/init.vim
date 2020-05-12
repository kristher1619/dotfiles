set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'dracula/vim'
Plug 'kaicataldo/material.vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-vinegar'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'leafgarland/typescript-vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'Shougo/denite.nvim'
call plug#end()

" UI Customizations
syntax enable
let mapleader = ','

set wrap!

so ~/.config/nvim/plugins/material.vim
so ~/.config/nvim/plugins/nerdtree.vim
so ~/.config/nvim/plugins/coc.vim
so ~/.config/nvim/plugins/terminal.vim
so ~/.config/nvim/plugins/ctrlp.vim

"----------------- Formatting ------------------
set number
set shiftwidth=2
set tabstop=2
set autoindent
set smartindent
set clipboard+=unnamedplus
"--------------Search-------------"
set hlsearch            "set search highlight
set incsearch
set autowriteall          "Auto Save when changing buffer

"--------------------- Key Map -------------------------
map <Leader>ev :tabedit ~/.config/nvim/init.vim<cr>
nnoremap <Leader><space> :nohlsearch<CR>
map <Leader>w :w<CR>
map <Leader>f :tag<space>
map <Leader>so :w<CR>:so ~/.config/nvim/init.vim<CR>
map <Leader>ta :tabe ~/Code/Angular/treatanyone_app<CR>
nmap mq :q<cr>
imap jj <ESC>
imap kk <ESC>:w<CR>

"---------------Splits and Tabs---------------
set splitbelow            				"New window will be added below
set splitright

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nmap tn :tabnext<cr>       				"Move to next tab
nmap tp :tabprev<cr>       				"Move to previous tab
nmap <C-t> :tabnew<cr>						"Open new tab
