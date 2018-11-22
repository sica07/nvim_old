let g:vim_php_refactoring_use_default_mapping = 0

"document all functions/methods
nnoremap <unique> <Leader>.da :call PhpDocAll()<CR>
"detect unused use
nnoremap <unique> <Leader>.du :call PhpDetectUnusedUseStatements()<CR>
"extract use
nnoremap <unique> <Leader>.eu :call PhpExtractUse()<CR>

vnoremap <unique> <Leader>.ec :call PhpExtractConst()<CR>
nnoremap <unique> <Leader>.ep :call PhpExtractClassProperty()<CR>
nnoremap <unique> <Leader>.np :call PhpCreateProperty()<CR>
nnoremap <unique> <Leader>.rv :call PhpRenameClassVariable()<CR>
nnoremap <unique> <Leader>.rm :call PhpRenameMethod()<CR>
