" Or your own defined source of standard (absolute or relative path):
let g:phpfmt_standard = getcwd() + 'standard.xml'
let g:phpfmt_autosave = 1
autocmd BufWritePre *.php silent! :!phpcbf --standard="standard.xml" %
