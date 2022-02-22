lua << EOF
  require("trouble").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF
nnoremap <leader>dx <cmd>TroubleToggle<cr>
nnoremap <leader>dd <cmd>TroubleToggle document_diagnostics<cr>
nnoremap <leader>dq <cmd>TroubleToggle quickfix<cr>
nnoremap <leader>dl <cmd>TroubleToggle loclist<cr>
