call plug#begin('~/.vim/plugged')
Plug 'kaicataldo/material.vim'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-vinegar'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'leafgarland/typescript-vim'
Plug 'skwp/greplace.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-rhubarb'
"Plug 'tpope/vim-eunuch'
"Plug 'tpope/vim-surround' 
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-commentary'
Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
"Plug 'SirVer/ultisnips'
Plug 'tobyS/vmustache'
Plug 'tobyS/pdv'
" Plug 'mattn/emmet-vim'
Plug 'leafOfTree/vim-vue-plugin'

call plug#end()
set grepprg=ag

let g:grep_cmd_opts = '--line-numbers --no-heading'

"----------- PHP Docs -----------

let g:pdv_template_dir = $HOME ."/.vim/plugged/pdv/templates"
nnoremap <Leader>d :call pdv#DocumentWithSnip()<CR>

"------------Vim Syntax highlight----------

let g:vim_vue_plugin_load_full_syntax=1
"-------------UltiSnips----------- 

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-tab>"
let g:UltiSnipsSnippetDirectories = ["~/.vim/UltiSnips"]

" UI Customizations
syntax enable
" colorscheme material
set t_CO=256
if (has("termguicolors"))
 set termguicolors
endif

let mapleader = ','
so ~/.config/nvim/plugins/material.vim
so ~/.config/nvim/plugins/coc.vim
so ~/.config/nvim/plugins/terminal.vim
so ~/.config/nvim/plugins/fzf.vim
" so ~/.config/nvim/plugins/airline.vim

"------------ COC Commands -------------
nnoremap <leader>es :CocCommand eslint.executeAutofix<CR>
nnoremap <leader>ef :Format<CR>

"----------------- Formatting ------------------
set number
set relativenumber
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set autoindent
set smartindent
set clipboard=unnamed
set wrap!
"--------------Search-------------"
set hlsearch            "set search highlight
set incsearch
set autowriteall          "Auto Save when changing buffer
set noerrorbells visualbell t_vb=               			"No damn bells!

"auto adjust working directory
" autocmd BufEnter * silent! lcd %:p:h
"---------------Splits and Tabs---------------
set splitbelow            				"New window will be added below
set splitright

nmap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>s= <C-w>=
nnoremap <Leader>s+ <C-w>+
nnoremap <Leader>s- <C-w>-
nnoremap <Leader>sm  <C-w>\|<C-w>_
nnoremap <Leader>v  :vsp<cr>

au! BufWritePost $MYVIMRC source % "Auto load vimrc after changed

au FocusLost * :wa "Auto save when focus is lost

set nohlsearch
"--------------------- Key Map -------------------------
map <Leader>ev :vsplit $MYVIMRC<cr>
map <Leader>ep :tabedit ~/.config/nvim/plugins/<cr>
nnoremap <Leader><space> :nohlsearch<CR>
map <Leader>w :w<CR>
map <Leader>wa :wa<CR>
map <Leader>ss :w<CR>
map <Leader>so :w<CR>:so $MYVIMRC<CR> 
nmap <Leader>qq :bd<cr>
nmap <Leader>qa :qa!<cr>
nnoremap <Leader>en :e %:h/

map <leader>aa :e ~/.aliases<cr>
imap jj <ESC>
imap kk <ESC>:w<CR>

nnoremap <Leader>U viwU<esc>
nnoremap <Leader>u viwu<Esc>

nnoremap <Leader>R :Gsearch<cr>

" In insert or command mode, move normally by using Ctrl
imap <buffer> <silent> <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>

"--------- Buffers ------------
nnoremap z[ :bprev<cr>
nnoremap z] :bnext<cr>

"-------------- Comments ----------------
" nnoremap <space>/ :Commentary<CR>j
nnoremap <c-_> :Commentary<CR>j
nnoremap <c-/> :Commentary<CR>j
vnoremap <C-_> :Commentary<CR>

nnoremap <D-/> :Commentary<CR>j
vnoremap <D-/> :Commentary<CR>j

" ----------- Projects Directory  ------------------
map <Leader>ta :e ~/Code/TreatAnyone/treatanyone_app<CR><CR>
map <Leader>se :e ~/Code/SimplyEarth/simplyearth<CR><CR>
map <Leader>fm :e ~/Code/Flexmart<CR>


" ---------- Tabs ------------
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader><tab> gt
noremap <leader><s-tab> gT

"----------- FZF -----------

map <C-p> :Files<CR>
map <C-g> :GFiles<CR>
map <leader>b :Buffers<CR>
nnoremap <C-f> /
nnoremap <C-S-f> :Rg<CR>
nnoremap <C-b> :call CocAction('jumpDefinition', 'drop')<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>m :Marks<CR>



"-- FOLDING --
set foldmethod=syntax "syntax highlighting items specify folds
set foldcolumn=1 "defines 1 col at window left, to indicate folding
let javaScript_fold=1 "activate folding by JS syntax
let php_fold=1 "activate folding by php syntax
let html_fold=1 "activate folding by html syntax
set foldlevelstart=99 "start file with all folds opened
