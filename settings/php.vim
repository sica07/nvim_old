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
