lua require('telescope').setup()
lua << EOF
require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}
require('telescope').load_extension('fzf')
EOF

" Find files using Telescope command-line sugar.
nnoremap <silent> <leader>ff <cmd>Telescope find_files<cr>
nnoremap <silent> <leader>fu <cmd>Telescope buffers<cr>
nnoremap <silent> <leader>ft <cmd>Telescope tags<cr>
nnoremap <silent> <leader>fr <cmd>Telescope live_grep<cr>
nnoremap <silent> <leader>fs <cmd>Telescope lsp_document_symbols<cr>
nnoremap <silent> <leader>fd <cmd>Telescope lsp_document_diagnostics<cr>
nnoremap <silent> <leader>fq <cmd>Telescope quickfix<cr>
"nnoremap <silent> <c-e> <cmd>Telescope coc mru<cr>
nnoremap <silent> <leader>fb <cmd>Telescope git_branches<cr>
nnoremap <silent> <leader>fe <cmd>Telescope oldfiles<cr>
"nnoremap <silent> <c-s> <cmd>Telescope ultisnips<cr>

