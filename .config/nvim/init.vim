
call plug#begin('~/.vim/plugged')
Plug 'dracula/vim'
Plug 'kaicataldo/material.vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-vinegar'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'leafgarland/typescript-vim'
Plug 'tpope/vim-surround'
Plug 'Shougo/denite.nvim'
Plug 'liuchengxu/vim-which-key'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'


Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-commentary'
Plug 'terryma/vim-multiple-cursors'
call plug#end()

" UI Customizations
syntax enable
let mapleader = ','


so ~/.config/nvim/plugins/material.vim
so ~/.config/nvim/plugins/nerdtree.vim
so ~/.config/nvim/plugins/coc.vim
so ~/.config/nvim/plugins/terminal.vim
"so ~/.config/nvim/plugins/ctrlp.vim
so ~/.config/nvim/plugins/which-key.vim
so ~/.config/nvim/plugins/fzf.vim

"----------------- Formatting ------------------
set number
set shiftwidth=2
set tabstop=2
set autoindent
set smartindent
set clipboard+=unnamedplus
set wrap!
set autochdir
"--------------Search-------------"
set hlsearch            "set search highlight
set incsearch
set autowriteall          "Auto Save when changing buffer
"---------------Splits and Tabs---------------
set splitbelow            				"New window will be added below
set splitright


au! BufWritePost $MYVIMRC source %


"--------------------- Key Map -------------------------
map <Leader>ev :tabedit ~/.config/nvim/init.vim<cr>
nnoremap <Leader><space> :nohlsearch<CR>
map <Leader>w :w<CR>
map <Leader>ss :w<CR>
map <Leader>so :w<CR>:so ~/.config/nvim/init.vim<CR>
nmap bq :q<cr>
nmap <Leader>qq :q<cr>
imap jj <ESC>
imap kk <ESC>:w<CR>

inoremap <c-u> <ESC>viwUi
nnoremap <Leader>U viwU<esc>
nnoremap <Leader>u viwu<Esc>

" ----------- Projects Directory 
map <Leader>ta :tabe ~/Code/Angular/treatanyone_app<CR>
map <Leader>ap :tabe ~/Code/PHP/aunicajpay<CR>
map <Leader>wil :tabe ~/Code/PHP/wilmaster<CR>
map <Leader>drip :tabe ~/Code/Sites/dripcoder<CR>
map <Leader>fm :tabe ~/Code/flexmart<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
nmap <C-t> :tabnew<cr>						"Open new tab
