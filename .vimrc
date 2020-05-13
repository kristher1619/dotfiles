call plug#begin('~/.vim/plugged')
Plug 'kaicataldo/material.vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-vinegar'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'liuchengxu/vim-which-key'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'leafgarland/typescript-vim'

Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-commentary'
Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs'
call plug#end()

" UI Customizations
syntax enable
let mapleader = ','


so ~/.config/nvim/plugins/material.vim
so ~/.config/nvim/plugins/nerdtree.vim
so ~/.config/nvim/plugins/coc.vim
so ~/.config/nvim/plugins/terminal.vim
so ~/.config/nvim/plugins/which-key.vim
so ~/.config/nvim/plugins/fzf.vim

"----------------- Formatting ------------------
set number
set shiftwidth=2
set tabstop=2
set expandtab
set autoindent
set smartindent
set clipboard=unnamed
set wrap!
set linespace=10
"--------------Search-------------"
set hlsearch            "set search highlight
set incsearch
set autowriteall          "Auto Save when changing buffer
"---------------Splits and Tabs---------------
set splitbelow            				"New window will be added below
set splitright


au! BufWritePost $MYVIMRC source % "Auto load vimrc after changed

au FocusLost * :wa "Auto save when focus is lost

"--------------------- Key Map -------------------------
map <Leader>ev :tabedit $MYVIMRC<cr>
nnoremap <Leader><space> :nohlsearch<CR>
map <Leader>w :w<CR>
map <Leader>ss :w<CR>
map <Leader>so :w<CR>:so $MYVIMRC<CR> 
nmap <Leader>qq :quit<cr>
imap <C-w> <ESC>:q<cr>
map <C-w> :q<cr>
" Save File
imap <C-s> <ESC>:w<cr>
map <C-s> :w<cr>

imap jj <ESC>
imap kk <ESC>:w<CR>

nnoremap <Leader>U viwU<esc>
nnoremap <Leader>u viwu<Esc>


"-------------- Comments ----------------
nnoremap <space>-/> :Commentary<CR>j
vnoremap <D-/> :Commentary<CR>


" ----------- Projects Directory  ------------------
map <Leader>ta :tabe ~/Code/Angular/treatanyone_app<CR>
map <Leader>ap :tabe ~/Code/PHP/aunicajpay<CR>
map <Leader>wil :tabe ~/Code/PHP/wilmaster<CR>
map <Leader>drip :tabe ~/Code/Sites/dripcoder<CR>
map <Leader>fm :tabe ~/Code/flexmart<CR>


"----------- Splits ---------------
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" ---------- Tabs ------------
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
nmap <C-t> :tabnew<cr>						"Open new tab
