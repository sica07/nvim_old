" Every time you open a git object using fugitive it creates a new buffer.
" This means that your buffer listing can quickly become swamped with
" fugitive buffers. This prevents this from becomming an issue:

autocmd BufReadPost fugitive://* set bufhidden=delete
"Mappings
nnoremap <silent> <leader>g :Git<CR>
nnoremap <silent> <leader>gs :Git<CR>
nnoremap <silent> <leader>gd :Gvdiff<CR>
nnoremap <slient> <leader>gdh :diffget //2<CR>
nnoremap <silent> <leader>gdl :diffget //3<CR>
nnoremap <silent> <leader>gpp :diffput<CR>
nnoremap <silent> <leader>gc :Git commit<CR>
nnoremap <silent> <leader>gb :Git blame<CR>
nnoremap <silent> <leader>gl :Gclog<CR>
nnoremap <silent> <leader>gll :Gclog --  %<CR>
nnoremap <silent> <leader>gp :Git push<CR>
":Git add %"
nnoremap <silent> <leader>ga :Gwrite<CR>
nnoremap <silent> <leader>gw :Gwrite<CR>
":Git checkout %"
nnoremap <silent> <leader>gr :Gread<CR>
":Git mv %
nnoremap <silent> <leader>gm :Gmove<CR>
nnoremap <silent> <leader>ge :Gedit<CR>
nnoremap <silent>  ]og :Gitsigns toggle_signs<CR>
nnoremap <silent>  [og :Gitsigns toggle_signs<CR>
