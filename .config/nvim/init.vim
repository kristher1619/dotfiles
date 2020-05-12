call plug#begin('~/.vim/plugged')
Plug 'dracula/vim'
Plug 'kaicataldo/material.vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-vinegar'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
call plug#end()

" UI Customizations
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

if (has("termguicolors"))
 set termguicolors
endif
syntax enable

" Material
let g:material_terminal_italics = 1
let g:material_theme_style = 'darker'
let g:lightline = { 'colorscheme': 'material_vim' }
colorscheme material
" NetRW
let g:netrw_banner = 0
let g:netrw_liststyle = 3

" Nerd Tree

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
nnoremap <silent> <D-1> :NERDTreeToggle<CR>
nnoremap <silent> <C-1> :NERDTreeToggle<CR>
nnoremap <silent> <C-b> :NERDTreeToggle<CR>
"-----------------
set encoding=UTF-8
set number
set shiftwidth=2
set tabstop=2
set autoindent
set smartindent


"---------------------
" Key Maps
let mapleader = ','
map <Leader>ev :tabedit ~/.config/nvim/init.vim<cr>
imap jj <ESC>
imap kk <ESC>:w<CR>
