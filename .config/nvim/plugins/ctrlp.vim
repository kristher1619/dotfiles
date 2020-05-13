"-------------CTRL+P--------------
let g:ctrlp_custom_ignore = 'node_modules\|vendors\|DS_Store\|.git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
let g:ctrlp_show_hidden = 1



"------- Load from Cache -------
" https://stackoverflow.com/questions/21346068/slow-performance-on-ctrlp-it-doesnt-work-to-ignore-some-folders
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif


nmap <C-p> :CtrlP<cr>

