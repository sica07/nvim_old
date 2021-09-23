nnoremap <leader>F :lua require('spectre').open()<CR>

"search current word
nnoremap <leader>fw :lua require('spectre').open_visual({select_word=true})<CR>
"vnoremap <leader>s :lua require('spectre').open_visual()<CR>
"  search in current file
nnoremap <leader>ff viw:lua require('spectre').open_file_search()<cr>
