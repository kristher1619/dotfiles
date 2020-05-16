"------------Material-----------
let g:material_terminal_italics = 1
let g:material_theme_style = 'darker'
let g:lightline = { 'colorscheme': 'material_vim' }
colorscheme material

if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

if (has("termguicolors"))
  set termguicolors
endif

