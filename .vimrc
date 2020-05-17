call plug#begin('~/.vim/plugged')
Plug 'kaicataldo/material.vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-vinegar'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'editorconfig/editorconfig-vim'
" Plug 'liuchengxu/vim-which-key'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'leafgarland/typescript-vim'
Plug 'skwp/greplace.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-eunuch'
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
Plug 'crusoexia/vim-monokai'
Plug 'Quramy/vim-js-pretty-template'
Plug 'pangloss/vim-javascript'
" Plug 'vim-syntastic/syntastic'


call plug#end()

" -------------- Vim Sytastic ------------
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:sytastic_typescript_checkers = ['typescript', 'coc']

" --------GReplace-----------
set grepprg=ag

let g:grep_cmd_opts = '--line-numbers --no-heading'
"----------- PHP Docs -----------

let g:pdv_template_dir = $HOME ."/.vim/plugged/pdv/templates"
nnoremap <Leader>d :call pdv#DocumentWithSnip()<CR>
"-------------UltiSnips----------- 

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-tab>"
let g:UltiSnipsSnippetDirectories = ["~/.vim/UltiSnips"]

" UI Customizations
syntax enable
colorscheme material
set t_CO=256
if (has("termguicolors"))
 set termguicolors
endif

let mapleader = ','
so ~/.config/nvim/plugins/material.vim
so ~/.config/nvim/plugins/nerdtree.vim
so ~/.config/nvim/plugins/coc.vim
so ~/.config/nvim/plugins/terminal.vim
" so ~/.config/nvim/plugins/which-key.vim
so ~/.config/nvim/plugins/fzf.vim

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
set linespace=15
"--------------Search-------------"
set hlsearch            "set search highlight
set incsearch
set autowriteall          "Auto Save when changing buffer
set noerrorbells visualbell t_vb=               			"No damn bells!

"---------------Splits and Tabs---------------
set splitbelow            				"New window will be added below
set splitright


nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l



nnoremap <Leader>s= <C-w>=
nnoremap <Leader>s+ <C-w>+
nnoremap <Leader>s- <C-w>-
nnoremap <Leader>sm  <C-w>\|<C-w>_
nnoremap <C-m>m  <C-w>\|<C-w>_

au! BufWritePost $MYVIMRC source % "Auto load vimrc after changed

au FocusLost * :wa "Auto save when focus is lost

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


map <leader>aa :e ~/.aliases<cr>
imap jj <ESC>
imap kk <ESC>:w<CR>

nnoremap <Leader>U viwU<esc>
nnoremap <Leader>u viwu<Esc>

map <Leader>R :Gsearch<cr>

"-------------- Comments ----------------
" nnoremap <space>/ :Commentary<CR>j
nnoremap <c-_> :Commentary<CR>j
nnoremap <c-/> :Commentary<CR>j
vnoremap <C-_> :Commentary<CR>

nnoremap <D-/> :Commentary<CR>j
vnoremap <D-/> :Commentary<CR>j

" ----------- Projects Directory  ------------------
map <Leader>ta :e ~/Code/Angular/treatanyone_app<CR><CR>
map <Leader>fm :e ~/Code/flexmart<CR>


" ---------- Tabs ------------
noremap <leader>1 1gt
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

nnoremap <D-b> :call CocAction('jumpDefinition', 'drop')<CR>

