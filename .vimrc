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
Plug 'skwp/greplace.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-commentary'
Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'SirVer/ultisnips'
Plug 'tobyS/vmustache'
Plug 'tobyS/pdv'

call plug#end()



" --------GReplace-----------
set grepprg=rg

let g:grep_cmd_opts = '--line-number --no-heading'

"----------- PHP Docs -----------

let g:pdv_template_dir = $HOME ."/.vim/plugged/pdv/templates"
nnoremap <Leader>d :call pdv#DocumentWithSnip()<CR>

"-------------UltiSnips-----------
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-tab>"



" UI Customizations
syntax enable
let mapleader = ','



so ~/.config/nvim/plugins/material.vim
so ~/.config/nvim/plugins/nerdtree.vim
so ~/.config/nvim/plugins/coc.vim
so ~/.config/nvim/plugins/terminal.vim
so ~/.config/nvim/plugins/which-key.vim
so ~/.config/nvim/plugins/fzf.vim

"------------ COC Commands -------------
nnoremap <leader>es :CocCommand eslint.executeAutofix<CR>
nnoremap <leader>ef :Format<CR>

"---------- Language Specific ------------
so ~/.config/nvim/language/laravel.vim



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
set noerrorbells visualbell t_vb=               			"No damn bells!

"---------------Splits and Tabs---------------
set splitbelow            				"New window will be added below
set splitright


au! BufWritePost $MYVIMRC source % "Auto load vimrc after changed

au FocusLost * :wa "Auto save when focus is lost

"--------------------- Key Map -------------------------
map <Leader>ev :tabedit $MYVIMRC<cr>
map <Leader>ep :tabedit ~/.config/nvim/plugins/<cr>
map <Leader>es :e ~/.vim/snippets/
nnoremap <Leader><space> :nohlsearch<CR>
map <Leader>w :w<CR>
map <Leader>ss :w<CR>
map <Leader>so :w<CR>:so $MYVIMRC<CR> 
nmap <Leader>qq :q!<cr>
imap <C-w> <ESC>:q<cr>
map <C-w> :q<cr>
" Save File
imap <C-s> <ESC>:w<cr>
map <C-s> :w<cr>

imap jj <ESC>
imap kk <ESC>:w<CR>

nnoremap <Leader>U viwU<esc>
nnoremap <Leader>u viwu<Esc>

map <Leader>R :Gsearch<cr>

"-------------- Comments ----------------
nnoremap <space>-/> :Commentary<CR>j
vnoremap <D-/> :Commentary<CR>


" ----------- Projects Directory  ------------------
map <Leader>ta :e ~/Code/Angular/treatanyone_app<CR>
map <Leader>fm :e ~/Code/flexmart<CR><CR>

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



