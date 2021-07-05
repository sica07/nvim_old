lua require('telescope').setup()
"lua require('telescope').load_extension('ultisnips')

" Find files using Telescope command-line sugar.
nnoremap <silent> <c-p> <cmd>Telescope find_files<cr>
nnoremap <silent> <c-u> <cmd>Telescope buffers<cr>
nnoremap <silent> <c-t> <cmd>Telescope tags<cr>
nnoremap <silent> <c-r> <cmd>Telescope live_grep<cr>
nnoremap <silent> <c-n> <cmd>Telescope lsp_document_symbols<cr>
nnoremap <silent> <c-d> <cmd>Telescope lsp_document_diagnostics<cr>
nnoremap <silent> <c-q> <cmd>Telescope quickfix<cr>
"nnoremap <silent> <c-e> <cmd>Telescope coc mru<cr>
nnoremap <silent> <c-g> <cmd>Telescope git_commits<cr>
"nnoremap <silent> <c-s> <cmd>Telescope ultisnips<cr>

