let g:vim_php_refactoring_use_default_mapping = 0

"nnoremap <unique> <Leader>.rv :call PhpRenameLocalVariable()<CR>
"nnoremap <unique> <Leader>.rp :call PhpRenameClassVariable()<CR>
"nnoremap <unique> <Leader>.rm :call PhpRenameMethod()<CR>
"nnoremap <unique> <Leader>.eu :call PhpExtractUse()<CR>
"vnoremap <unique> <Leader>.ec :call PhpExtractConst()<CR>
"nnoremap <unique> <Leader>.ep :call PhpExtractClassProperty()<CR>
"vnoremap <unique> <Leader>.em :call PhpExtractMethod()<CR>
"nnoremap <unique> <Leader>.cp :call PhpCreateProperty()<CR>
"nnoremap <unique> <Leader>.du :call PhpDetectUnusedUseStatements()<CR>
"vnoremap <unique> <Leader>.= :call PhpAlignAssigns()<CR>
"nnoremap <unique> <Leader>.csg :call PhpCreateSettersAndGetters()<CR>
"nnoremap <unique> <Leader>.cg :call PhpCreateGetters()<CR>
"nnoremap <unique> <Leader>.da :call PhpDocAll()<CR>

"nmap <Leader>. :call RefactorMenu()<CR>
"vmap <silent><Leader>. :call RefactorMenu()<CR>

function! RefactorMenu()
    let menu=input("Rename:\n [rv] local variable [rp] class property [rm] class method\nExtract:\n [em] method [eu] use [ep] property  [ei] interface\nCreate:\n [cp] property [csg] set & get [cg] only getters [cc] constructor\nMove:\n [md] directory&change namespace [mc] class&change namespace\nOthers:\n [ia] implement Abstract/Interface\n [d] GoTo Definition <C-b>\n [da] document all\n [du] detect unused Use\n [m]/[.] Context Menu\n=> ")
    if menu == "rv"
        :call PhpRenameLocalVariable()<CR>
    elseif menu == "rp"
        :call PhpRenameClassVariable()<CR>
    elseif menu == "rm"
        :call PhpRenameMethod()<CR>
    elseif menu == "em"
        ":call phpactor#ExtractMethod()<CR>
        :call PhpExtractMethod()<CR>
    elseif menu == "eu"
        :call PhpExtractUse()<CR>
    elseif menu == "ep"
        :call PhpExtractClassProperty()<CR>
    elseif menu == "ei"
        :call PHPExtractInterface()<CR>
    elseif menu == "cp"
        :call PhpCreateProperty()<CR>
    elseif menu == "csg"
        :call PhpCreateSettersAndGetters()<CR>
    elseif menu == "cg"
        :call PhpCreateGetters()<CR>
    elseif menu == "cc"
        :call PHPConstructorArgumentMagic()<CR>
    elseif menu == "md"
        :call PHPMoveDir()<CR>
    elseif menu == "mc"
        :call PHPMoveClass()<CR>
    elseif menu == "ia"
        :call PHPModify("implement_contracts")<CR>
    elseif menu == "du"
        :call PhpDetectUnusedUseStatements()<CR>
    elseif menu == "m"
        :call phpactor#ContextMenu()<CR>
    elseif menu == "."
        :call phpactor#ContextMenu()<CR>
    elseif menu == "d"
        :call phpactor#GotoDefinition()<CR>
    elseif menu == "da"
        :call PhpDocAll()<CR>
    endif
endfunction
