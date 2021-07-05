"Use <Tab> and <S-Tab> to navigate the completion list:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"Use <cr> to confirm completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"make <cr> select the first completion item and confirm the completion when no item has been selected
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

nnoremap <leader>c :CocList<cr>
"rename variable inside document
nmap <silent> <c-c> <Plug>(coc-cursors-word)
nmap <silent> <c-x> :CocCommand document.renameCurrentWord<cr>
"search files
"nnoremap <silent> <c-p> :CocList files<CR>
"nnoremap <silent> <c-p> :CocCommand fzf-preview.ProjectFiles<cr>

"search symbols
"nnoremap <silent> <c-s> :CocList symbols<cr>
"nnoremap <silent> <c-s> :CocCommand fzf-preview.CocTypeDefinitions<cr>

"search outline of current file
"nnoremap <silent> <c-n> :CocList outline<cr>

"search quickfix window
"nnoremap <silent> <c-q> :CocCommand fzf-preview.Quickfix<cr>

"search locationlist window
"nnoremap <silent> <c-o> :CocCommand fzf-preview.LocationList<cr>

"search symbols
"nnoremap <silent> <c-d> :CocCommand fzf-preview.CocDiagnostics<cr>

"search marks
"nnoremap <silent> <c-k> :CocCommand fzf-preview.Marks<cr>

"search most recent used
nnoremap <silent> <c-e> :CocCommand fzf-preview.MruFiles<CR>

"search buffers
"nnoremap <silent> <c-u> :CocCommand fzf-preview.Buffers<CR>

"search with Rg
"nnoremap <silent> <c-r> :CocCommand fzf-preview.ProjectGrep<CR>
"search tags
"nnoremap <silent> <c-t> :CocCommand fzf-preview.Ctags<CR>
"list git actions
"nnoremap <silent> <c-g> :CocCommand fzf-preview.GitActions<CR>

"search tags
"nnoremap <silent> <c-t> :CocList tags<CR>

"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gt <Plug>(coc-type-definition)
"nmap <silent> g] <Plug>(coc-diagnostics-next)
"nmap <silent> g[ <Plug>(coc-diagnostics-prev)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)
"nmap <silent> S <Plug>(coc-fix-current)


" Use K to show documentation in preview window
"nnoremap <silent> K :call <SID>show_documentation()<CR>
" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

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
"highlight CocErrorHighlight ctermfg=Red  guifg=#ff0000

" used for trigger completion, completion confirm, snippet expand and jump like VSCod
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
