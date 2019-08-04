""
" vim-utils.vim
" Copyright © 2019
" Author: ThatsWhatSheCoded <https://github.com/ThatsWhatSheCoded/vim-utils>
" Description: Remaps and default variables for custom utility vim functions
""


""
" @setting g:vim_utils_view_pct
" Percent location cursor should maintain during `n`, `N`, `*`, and `#` search
let g:vim_utils_view_pct = get(g:, 'vim_utils_view_pct', 25)


" Repeat the latest `/` or `?` search using 'n'
nnoremap n :call vim_utils#SearchImp('n') \| se hls<CR>


" Repeat the latest `/` or `?` search using 'N'
nnoremap N :call vim_utils#SearchImp('N') \| se hls<CR>


" Search forward for the next occurrence of word
nnoremap * :call vim_utils#SearchImp('*') \| se hls<CR>


" Search backward for the next occurrence of word
nnoremap # :call vim_utils#SearchImp('#') \| se hls<CR>
