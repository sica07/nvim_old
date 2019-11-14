"Use <cr> to confirm completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"make <cr> select the first completion item and confirm the completion when no item has been selected
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

nnoremap <leader>c :CocList<cr>

"search files
"nnoremap <silent> <c-p> :CocList files<CR>

"search symbols
nnoremap <silent> <c-s> :CocList symbols<cr>

"search outline of current file
nnoremap <silent> <c-n> :CocList outline<cr>

"search quickfix window
nnoremap <silent> <c-q> :CocList quickfix<cr>

"search locationlist window
nnoremap <silent> <c-o> :CocList locationlist<cr>

"search symbols
nnoremap <silent> <c-d> :CocList diagnostics<cr>

"search marks
nnoremap <silent> <c-m> :CocList marks<cr>

"search most recent used
"nnoremap <silent> <c-e> :CocList mru<CR>

"search buffers
nnoremap <silent> <c-u> :CocList buffers<CR>

"search with Rg
nnoremap <silent> <c-r> :CocList grep<CR>

"search tags
nnoremap <silent> <c-t> :CocList tags<CR>

vnoremap <leader>f :<C-u>call <SID>GrepFromSelected(visualmode())<CR>
nnoremap <leader>f :<C-u>set operatorfunc=<SID>GrepFromSelected<CR>g@
function! s:GrepFromSelected(type)
  let saved_unnamed_register = @@
  if a:type ==# 'v'
    normal! `<v`>y
  elseif a:type ==# 'char'
    normal! `[v`]y
  else
    return
  endif
  let word = substitute(@@, '\n$', '', 'g')
  let word = escape(word, '| ')
  let @@ = saved_unnamed_register
  execute 'CocList grep '.word
endfunction

"coc-highliths
highlight CocErrorHighlight ctermfg=Red  guifg=#ff0000
