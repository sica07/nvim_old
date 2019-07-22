let g:pdv_cfg_Author = "Marius Matei <nongeekboy@gmail.com>"
let g:pdv_cfg_Copyright = strftime('%Y')

" Options
" Whether or not to automatically add the function end comment (1|0)
let g:pdv_cfg_autoEndFunction = 0

" Whether or not to automatically add the class end comment (1|0)
let g:pdv_cfg_autoEndClass = 0


" :set paste before documenting (1|0)? Recommended.
let g:pdv_cfg_paste = 1

" Wether for PHP5 code PHP4 tags should be set, like @access,... (1|0)?
let g:pdv_cfg_php4always = 0

" Wether to guess scopes after PEAR coding standards:
" $_foo/_bar() == <private|protected> (1|0)?
let g:pdv_cfg_php4guess = 1

" If you selected 1 for the last value, this scope identifier will be used for
" the identifiers having an _ in the first place.
let g:pdv_cfg_php4guessval = "protected"

" Whether to generate the following annotations:
let g:pdv_cfg_annotation_Package = 0
let g:pdv_cfg_annotation_Version = 0
let g:pdv_cfg_annotation_Author = 0
let g:pdv_cfg_annotation_Copyright = 0
let g:pdv_cfg_annotation_License = 0

inoremap <leader>pd <ESC>:call PhpDocSingle()<CR>i
nnoremap <leader>pd :call PhpDocSingle()<CR>
vnoremap <leader>pd :call PhpDocRange()<CR>
