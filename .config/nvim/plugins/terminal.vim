
"--------------Terminal-----------------------


" Turn terminal to normal mode with escape
" Also close the FZF windows when pressing <esc> key

if has("nvim")
  au TermOpen * tnoremap <buffer> <Esc> <c-\><c-n>
  au FileType fzf tunmap <buffer> <Esc>
endif
set shell=/usr/local/bin/zsh

" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

tnoremap <C-J> <C-\><C-n><C-w><C-J>
tnoremap <C-H> <C-\><C-n><C-w><C-H>
tnoremap <C-K> <C-\><C-n><C-w><C-K>
tnoremap <C-L> <C-\><C-n><C-w><C-L>
