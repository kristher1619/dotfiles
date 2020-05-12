so ~/.vim/plugins.vim
syntax enable
set backspace=indent,eol,start				"make backspace behave like every other editor
let mapleader = ','					"set the default to , instead of /
set number						"activate line numbers
set shiftwidth=2
set tabstop=2
set autoindent
set smartindent
set wrap!						"disable line-wrapping
"--------------GUIOptions-------------"
colorscheme material
set macligatures					"Fancy Symbols
set guifont=Fira_Code:h15
set guioptions-=l					"Disable GUI Scrollbars
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=e					"Remove the black bars at the top
set linespace=15					"Macvim-Line Height"
"--------------Search-------------"
set hlsearch						"set search highlight
set incsearch
set autowriteall					"Auto Save when changing buffer
"--------------Splits-------------"
set splitbelow						"New window will be added below
set splitright
nmap <C-J> <C-W><C-J>					"Move down
nmap <C-H> <C-W><C-H>					"Move left
nmap <C-K> <C-W><C-K>					"Move up
nmap <C-L> <C-W><C-L>					"Move right
nmap <C-Tab> :tabnext<cr>				"Move to next tab 
nmap <C-S-Tab> :tabprev<cr>				"Move to previous tab 
"--------------Mappings--------------"
map <Leader>ev :tabedit ~/.vimrc<cr>
map <Leader>aa :tabedit ~/.aliases<cr>
map <Leader><space> :nohlsearch<cr>
map <Leader>f :tag<space>
map <Leader>ls :ls<cr>
map <D-f> /						"Map Search to cmd+f"
imap jj <ESC>						"Remap Esc to jj
imap kk <ESC>:w<CR>						"Remap save to jj

map <D-CR> <S-O><esc>					"Add new line while command mode
map <D-BS> dd						"Delete line wile on command mode

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
inoremap %% <% %> <left><left><left>
inoremap %%= <%= %> <left><left><left>


"--------------Auto Commands---------"

augroup autosourcing
	autocmd!					
	autocmd BufWritePost .vimrc source %		
augroup END

"-------------Plugins--------------"
"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\|vendors\|DS_Store\|.git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
let g:ctrlp_show_hidden = 1
nmap <D-p> :CtrlP<cr>
nmap <c-R> :CtrlPBufTag<cr>
nmap <c-e> :CtrlPMRUFiles<cr>

"/
"/ NerdTree
"/
let NERDTreeHijackNetrw=0
let NERDTreeShowHidden=1				"Show Hidden Files by default"

"Make NERDTree easier to toggle.
nmap <D-1> :NERDTreeToggle<cr>
nmap <D-1> :NERDTreeToggle<cr>

"/
"/ GReplace
"/

set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

"/
"/ Emmet Vim
"/

let g:user_emmet_expandabbr_key='<C-Tab>'
"  Notes
"- Press zz to center cursor
"- $ to end of line
"- 0 to start of line
"- gg to beginning of file
"- G to end of file
"- A to append line
"- I to insert at the beginning of line
"- ,ev to open vimrc
"- ,f to search ctag
"- ctrl+] to open method/class
"- ctrl+^ to go back previous file
"- :Gsearch to find 
"- :s/string_to_replace/replace_value
"- :Greplace to commit replace
"- cst remove surrounding tag in html
"- cs"' change surrounding " with '
"- ds"	delete surrounding "
