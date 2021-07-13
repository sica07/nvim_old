"include the dollar sign as part of the highlighting group for PHP variable
let g:php_var_selector_is_identifier=1

"Overriding PHP @tags and $parameters in comments to appear as a different highlighting group
function! PhpSyntaxOverride()
  " Put snippet overrides in this function.
  hi! link phpDocTags phpDefine
  hi! link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END


"Fix php
nmap  :fix :!phpcbf --standard="standard.xml" %<cr>
let g:phpcs_std_list='standard.xml'
"function! RunPhpcs()
    "let l:filename=@%
    "let l:phpcs_output=system('phpcs --report=csv --standard=standard.xml '.l:filename)
    "let l:phpcs_list=split(l:phpcs_output, "\n")
    "unlet l:phpcs_list[0]
    "cexpr l:phpcs_list
    "cwindow
    "set errorformat+=%l\\,"%m"
"endfunction

""set errorformat+="%f"\\,%l\\,%c\\,%t%*[a-zA-Z]\\,"%m"
""set errorformat+="%l\\,%t%*[a-zA-Z]\\,"%m"
"command! Phpcs execute RunPhpcs()
