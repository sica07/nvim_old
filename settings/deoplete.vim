let g:python_host_prog = '/usr/bin/python' 
let g:python3_host_prog = '/usr/bin/python3'
"set runtimepath+=~/.vim/bundle/deoplete.nvim/
let g:deoplete#enable_at_startup = 1
let g:deoplete#camel_case = 1
let g:deoplete#sources = {}
let g:deoplete#sources.php = ['omni', 'phpactor', 'ultisnips', 'buffer']
