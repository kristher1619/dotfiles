
"--------------Terminal-----------------------

" turn terminal to normal mode with escape


set shell=/usr/local/bin/zsh
tnoremap <Esc> <C-\><C-n>
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
