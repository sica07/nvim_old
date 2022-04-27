let g:vimspector_enable_mappings = 'HUMAN'


nmap <Leader>dd :call vimspector#Launch()<CR>
" mnemonic 'di' = 'debug inspect' (pick your own, if you prefer!)
" for visual mode, the visually selected text
xmap <Leader>di <plug>VimspectorBalloonEval
" for normal mode - the word under the cursor
nmap <Leader>dw :VimspectorWatch
nmap <Leader>dx :VimspectorReset<CR>
nmap <Leader>do :VimspectorShowOutput
nmap <Leader>di <plug>VimspectorBalloonEval

let g:vimspector_base_dir = '/home/marius/.config/vimspector'
