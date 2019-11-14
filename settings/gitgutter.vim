let g:gitgutter_signs = 0
let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '⚡'
let g:gitgutter_sign_removed = '✖'
let g:gitgutter_sign_modified_removed = '⊜'
let g:gitgutter_preview_win_floating = 1

" Jump between hunks
nmap gn <Plug>(GitGutterNextHunk)  " git next
nmap gp <Plug>(GitGutterPrevHunk)  " git previous

" Hunk-add and hunk-revert for chunk staging
nmap <Leader>ga <Plug>(GitGutterStageHunk)  " git add (chunk)
nmap <Leader>gu <Plug>(GitGutterUndoHunk)   " git undo (chunk)

