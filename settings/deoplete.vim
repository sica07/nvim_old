let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'
"set runtimepath+=~/.vim/bundle/deoplete.nvim/
let g:deoplete#enable_at_startup = 1
let g:deoplete#autocomplete_delay = 3
let g:deoplete#camel_case = 1
let g:deoplete#sources = {}
let g:deoplete#sources.markdown = ['dictionary', 'buffer', 'around']
let g:deoplete#sources.vimwiki = ['dictionary', 'buffer', 'around']
let g:deoplete#sources.php = ['omni', 'phpcd', 'ultisnips', 'buffer', 'file']

" Required for operations modifying multiple buffers like rename.
set hidden

"let g:LanguageClient_serverCommands = {
    "\ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    "\ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    "\ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    "\ 'python': ['/usr/local/bin/pyls'],
    "\ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
    "\ }

"nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
"nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
"nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
"nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
