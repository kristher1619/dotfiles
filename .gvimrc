"Disable Print
if has("gui_macvim")
  " macmenu &File.Print key=<nop>
  " macmenu &File.Open\.\.\. key=<nop>
  " macmenu &Edit.Find.Find\.\.\. key=<nop>
  " macmenu &Tools.Make key=<nop>
endif

"--------------GUIOptions-------------"
set macligatures					"Fancy Symbols
set guifont=FiraCode_Nerd_Font:h15
set guioptions-=l					"Disable GUI Scrollbars
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=e					"Remove the black bars at the top
set linespace=22					"Macvim-Line Height"
map <Leader>rv :tabe ~/.gvimrc<cr>

" ---------- Tabs ------------
noremap <D-1> 1gt
noremap <D-2> 2gt
noremap <D-3> 3gt
noremap <D-4> 4gt
noremap <D-5> 5gt
noremap <C-Tab> gt

map <D-p> :Files<CR>
imap <D-p> <ESC>:Files<CR>
map <D-F> :Rg<CR>
map <D-d> :vsp<CR>


"-------- Splits ---------
map <D-]> <C-l>
map <D-[> <C-h>

"-------------- Comments ----------------
nnoremap <D-/> :Commentary<CR>j
vnoremap <D-/> :Commentary<CR>

