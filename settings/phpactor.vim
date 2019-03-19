autocmd FileType php setlocal omnifunc=phpactor#Complete
let g:phpactorPhpBin = 'php'
let g:phpactorBranch = 'master'
let g:phpactor_executable = 'phpactor'
let g:phpactorOmniError = v:true

"!!!IMPORTANT check php-refactor-toolbox for other refactoring methods

" Invoke the context menu
nmap <Leader>.. :call phpactor#ContextMenu()<CR>
vmap <silent><Leader>.. :call phpactor#ContextMenu()<CR>
" go to definition
nmap <Leader>.d :call phpactor#GotoDefinition()<CR>
nmap <Leader>.n :call phpactor#Navigate()<CR>
vmap <silent><Leader>.n :call phpactor#Navigate()<CR>
"nmap <c-b> :call phpactor#GotoDefinition()<CR>

" Extract method from selection
vmap <silent><Leader>.em :<C-U>call phpactor#ExtractMethod()<CR>

"Moves the current file to a new path, updates references and namepaces. (default: current file)
nnoremap <leader>.mc :call PHPMoveClass()<cr>
function! PHPMoveClass()
    :w
    let l:oldPath = expand('%')
    let l:newPath = input("New path: ", l:oldPath)
    execute "!".g:phpactor_executable." class:move ".l:oldPath.' '.l:newPath
    execute "bd ".l:oldPath
    execute "e ". l:newPath
endfunction


"Moves directory and updates namespaces. (default: current dir)
nnoremap <leader>.md :call PHPMoveDir()<cr>
function! PHPMoveDir()
    :w
    let l:oldPath = input("old path: ", expand('%:p:h'))
    let l:newPath = input("New path: ", l:oldPath)
    execute "!".g:phpactor_executable." class:move ".l:oldPath.' '.l:newPath
endfunction

function! PHPModify(transformer)
    :w
    normal! ggdG
    execute "read !".g:phpactor_executable." class:transform  --transform=".a:transformer.' '.expand('%')
    normal! ggdd
    :w
endfunction


nnoremap <leader>.cc :call PHPConstructorArgumentMagic()<cr>
function! PHPConstructorArgumentMagic()
    " update phpdoc
    if exists("*UpdatePhpDocIfExists")
        normal! gg
        /__construct
        normal! n
        :call UpdatePhpDocIfExists()
        :w
    endif
    :call PHPModify("complete_constructor")
endfunction

"Implement missing functions from Interface/Abstract class
nnoremap <leader>.ic :call PHPModify("implement_contracts")<cr>
"If you refer $this->nonExistentProperty anywhere in your class and the property is not defined in this or any parent class, <leader>raa will add the property declaration
"nnoremap <leader>.aa :call PHPModify("add_missing_properties")<cr>
"<leader>rei takes all public methods from the current file (except the constructor) and creates an interface from it.
nnoremap <leader>.ei :call PHPExtractInterface()<cr>
function! PHPExtractInterface()
    :w
    let l:interfaceFile = substitute(expand('%'), '.php', 'Interface.php', '')
    execute "!".g:phpactor_executable."  class:inflect ".expand('%').' '.l:interfaceFile.' interface'
    execute "e ". l:interfaceFile
endfunction
