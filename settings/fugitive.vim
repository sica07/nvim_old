" Every time you open a git object using fugitive it creates a new buffer.
" This means that your buffer listing can quickly become swamped with
" fugitive buffers. This prevents this from becomming an issue:

autocmd BufReadPost fugitive://* set bufhidden=delete
"Mappings
nnoremap <silent> <leader>g :Gstatus<CR>
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gvdiff<CR>
nnoremap <slient> <leader>gdh :diffget //2<CR>
nnoremap <silent> <leader>gdl :diffget //3<CR>
nnoremap <silent> <leader>gpp :diffput<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gll :Glog --  %<CR>
nnoremap <silent> <leader>gp :Git push<CR>
":Git add %"
nnoremap <silent> <leader>ga :Gwrite<CR>
":Git checkout %"
nnoremap <silent> <leader>go :Gread<CR>
nnoremap <silent> <leader>gw :Gwrite<CR>:GitGutter<CR>
nnoremap <silent> <leader>gr :Gread<CR>:GitGutter<CR>
":Git mv %
nnoremap <silent> <leader>gm :Gmove<CR>
nnoremap <silent> <leader>ge :Gedit<CR>
nnoremap <silent> <leader>gg :GitGutterToggle<CR>
