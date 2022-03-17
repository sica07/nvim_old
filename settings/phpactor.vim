augroup PhpactorMappings
    au!
    au FileType php nmap <buffer> <Leader>.eu :PhpactorImportClass<CR>
    au FileType php nmap <buffer> <Leader>e :PhpactorClassExpand<CR>
    au FileType php vnoremap <buffer> <Leader>.em :PhpactorExtractMethod<CR>
    au FileType php nnoremap <buffer> <Leader>.ec :PhpactorExtractConstant<CR>
    au FileType php nmap <buffer> <Leader>.ic :PhpactorImportMissingClasses<CR>
    au FileType php nmap <buffer> <Leader>. :PhpactorContextMenu<CR>
    au FileType php nmap <buffer> <Leader>.nn :PhpactorNavigate<CR>
    au FileType php,cucumber nmap <buffer> <Leader>.gd
        \ :PhpactorGotoDefinition edit<CR>
    au FileType php nmap <buffer> <Leader>.k :PhpactorHover<CR>
    au FileType php nmap <buffer> <Leader>.cc :PhpactorClassNew<CR>
    au FileType php nmap <buffer> <Leader>.ci :PhpactorClassInflect<CR>
    au FileType php nmap <buffer> <Leader>.fr :PhpactorFindReferences<CR>
    au FileType php nmap <buffer> <Leader>.ep :PhpactorTransform<CR>
    au FileType php nmap <buffer> <Leader>.mf :PhpactorMoveFile<CR>
    au FileType php nmap <buffer> <Leader>.cf :PhpactorCopyFile<CR>
    au FileType php nmap <buffer> <silent> <Leader>.ee
        \ :PhpactorExtractExpression<CR>
    au FileType php vmap <buffer> <silent> <Leader>.ee
        \ :<C-u>PhpactorExtractExpression<CR>
    "au FileType php vmap <buffer> <silent> <Leader>em
        "\ :<C-u>PhpactorExtractMethod<CR>
  augroup END

