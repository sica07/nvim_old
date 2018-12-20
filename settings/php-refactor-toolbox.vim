let g:vim_php_refactoring_use_default_mapping = 0

nnoremap <unique> <Leader>.rv :call PhpRenameLocalVariable()<CR>
nnoremap <unique> <Leader>.rp :call PhpRenameClassVariable()<CR>
nnoremap <unique> <Leader>.rm :call PhpRenameMethod()<CR>
nnoremap <unique> <Leader>.eu :call PhpExtractUse()<CR>
vnoremap <unique> <Leader>.ec :call PhpExtractConst()<CR>
nnoremap <unique> <Leader>.ep :call PhpExtractClassProperty()<CR>
"vnoremap <unique> <Leader>.em :call PhpExtractMethod()<CR>
nnoremap <unique> <Leader>.np :call PhpCreateProperty()<CR>
nnoremap <unique> <Leader>.du :call PhpDetectUnusedUseStatements()<CR>
vnoremap <unique> <Leader>.= :call PhpAlignAssigns()<CR>
nnoremap <unique> <Leader>.sg :call PhpCreateSettersAndGetters()<CR>
nnoremap <unique> <Leader>.cog :call PhpCreateGetters()<CR>
nnoremap <unique> <Leader>.da :call PhpDocAll()<CR>
