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
call plug#end()

" UI Customizations
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

if (has("termguicolors"))
 set termguicolors
endif

syntax enable
let mapleader = ','

"Material
let g:material_terminal_italics = 1
let g:material_theme_style = 'darker'
let g:lightline = { 'colorscheme': 'material_vim' }
colorscheme material

"Nerd Tree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
let g:NERDTreeHijackNetrw = 0
nnoremap  <C-b> :NERDTreeToggle<CR>
nnoremap <Leader>1 :NERDTreeToggle<CR>

"-------------CTRL+P--------------
let g:ctrlp_custom_ignore = 'node_modules\|vendors\|DS_Store\|.git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
let g:ctrlp_show_hidden = 1
nmap <C-p> :CtrlP<cr>
nmap <C-R> :CtrlPBufTag<cr>
nmap <C-e> :CtrlPMRUFiles<cr>


"----------------- Formatting ------------------
set number
set shiftwidth=2
set tabstop=2
set autoindent
set smartindent

"-----------------COC--------------------------
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

"--------------Search-------------"
set hlsearch            "set search highlight
set incsearch
set autowriteall          "Auto Save when changing buffer

"--------------------- Key Map -------------------------
map <Leader>ev :tabedit ~/.config/nvim/init.vim<cr>
nnoremap <Leader><space> :nohlsearch<CR>

imap jj <ESC>
imap kk <ESC>:w<CR>
map <Leader>s :w<CR>

map <Leader>ta :tabe ~/Code/Angular/treatanyone_app<CR>
"--------------Terminal-----------------------
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>


" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()


"---------------Splits and Tabs---------------
set splitbelow            				"New window will be added below
set splitright
tnoremap <C-J> <C-\><C-n><C-w><C-J>         		"Move down
tnoremap <C-H> <C-\><C-n><C-w><C-H>         		"Move left
tnoremap <C-K> <C-\><C-n><C-w><C-K>         		"Move up
tnoremap <C-L> <C-\><C-n><C-w><C-L>         		"Move right
nnoremap <C-h> <C-w>h														"Move down  
nnoremap <C-j> <C-w>j														"Move left
nnoremap <C-k> <C-w>k														"Move up
nnoremap <C-l> <C-w>l														"Move right
nmap tt :tabnext<cr>       				"Move to next tab
nmap tp :tabprev<cr>       				"Move to previous tab
nmap <C-t> :tabnew<cr>						"Open new tab
nmap <C-w> :tabclose<cr>					"Open new tab
