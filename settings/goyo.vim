let g:limelight_default_coefficient = 0.8

function! s:goyo_enter()
  set norelativenumber
  set nonumber
  Limelight
endfunction

function! s:goyo_leave()
  set relativenumber
  set number
  Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

