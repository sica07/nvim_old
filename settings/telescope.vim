lua require('telescope').setup()
lua << EOF
require('telescope').setup {
  theme = "ivy",
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    },
    file_browser = {
        theme = "ivy",
        layout_config = { height = 0.95 },
    }
  }
}
require('telescope').load_extension('fzf')
require('telescope').load_extension('file_browser')
EOF

" Find files using Telescope command-line sugar.
nnoremap <silent> <leader>fp <cmd>Telescope find_files<cr>
nnoremap <silent> <leader>fw <cmd>Telescope search_string<cr>
nnoremap <silent> <leader>fu <cmd>Telescope buffers<cr>
nnoremap <silent> <leader>ft <cmd>Telescope current_buffer_tags<cr>
nnoremap <silent> <leader>ff <cmd>Telescope live_grep<cr>
nnoremap <silent> <leader>fs <cmd>Telescope lsp_document_symbols<cr>
nnoremap <silent> <leader>fd <cmd>Telescope diagnostics<cr>
nnoremap <silent> <leader>fr <cmd>Telescope lsp_references<cr>
"nnoremap <silent> <leader>fi <cmd>Telescope lsp_implementations<cr>
nnoremap <silent> <leader>fq <cmd>Telescope quickfix<cr>
nnoremap <silent> <leader>fl <cmd>Telescope loclist<cr>
"nnoremap <silent> <c-e> <cmd>Telescope coc mru<cr>
nnoremap <silent> <leader>fgb <cmd>Telescope git_branches<cr>
nnoremap <silent> <leader>fgs <cmd>Telescope git_stash<cr>
nnoremap <silent> <leader>fgc <cmd>Telescope git_bcommits<cr>
nnoremap <silent> <leader>f/ <cmd>Telescope search_history<cr>
nnoremap <silent> <leader>fe <cmd>Telescope oldfiles<cr>
nnoremap <silent> <leader>fz <cmd>Telescope spell_suggest<cr>
nnoremap <silent> <leader>fk <cmd>Telescope keymaps<cr>
nnoremap <silent> <leader>fx <cmd>Telescope file_browser<cr>

