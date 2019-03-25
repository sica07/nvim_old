let g:limelight_default_coefficient = 0.8

function! s:goyo_enter()
  Limelight
  augroup relnum
      au!
  augroup END
endfunction

function! s:goyo_leave()
    augroup relnum
            au!
            au FocusLost * :set norelativenumber
            au FocusGained * :set relativenumber
            au InsertEnter * :set norelativenumber
            au InsertLeave * :set relativenumber
        augroup END

        if exists(":Limelight")
            Limelight!
    endif
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

nnoremap <leader>gy :Goyo<CR>

