""
" vim-utils.vim
" Copyright © 2019
" Author: ThatsWhatSheCoded <https://github.com/ThatsWhatSheCoded/vim-utils>
" Description: Custom utility vim functions
""


""
" Maintain consistent built-in search functionality
function! vim_utils#SearchImp(type)
  let l:type = a:type

  if ('A' > a:type)
    let l:sw = expand("<cword>")
    let @/ = '\<' . sw . '\>'
    if ('*' == a:type)
      let l:start = '/'
      let l:type = 'n'
    elseif ('#' == a:type)
      let l:start = '?'
      let l:type = 'N'
    endif
    exec l:start . '\<' . sw . '\>'
  endif
  exec 'norm!' . l:type
  call vim_utils#SetViewForCursPos(g:vim_utils_view_pct)
endfunc


""
" Scroll screen so that the current line is located at % of total window
function! vim_utils#SetViewForCursPos(pct)
  let l:wl = float2nr((winheight(0) * a:pct) / 100)
  let l:orig = winsaveview()
  let l:curr = orig['lnum']
  let l:new_top = curr - wl - 1
  let l:new_view = {
        \ 'lnum': curr,
        \ 'leftcol': orig['leftcol'],
        \ 'col': orig['col'],
        \ 'topfill': orig['topfill'],
        \ 'topline': new_top,
        \ 'coladd': orig['coladd'],
        \ 'skipcol': orig['skipcol'],
        \ 'curswant': orig['curswant'] }
  call winrestview(new_view)
endfunc


""
" Toggle number line from off -> absolute -> hybrid relative num -> off
function! vim_utils#ToggleNumLine()
  if !&l:number && !&l:relativenumber
    set number!
  elseif &l:number && &l:relativenumber
    set number!
    set relativenumber!
  elseif &l:number && !&l:relativenumber
    set relativenumber!
  endif
endfunc


""
" Toggle search highlight (on/off) of latest search
function! vim_utils#ToggleHighlight()
  set hlsearch!
endfunc


""
" Visually select latest pasted text
function! vim_utils#VisSelectPasted()
  norm! `[v`]
endfunc
