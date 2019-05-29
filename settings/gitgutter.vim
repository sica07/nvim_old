let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '⚡'
let g:gitgutter_sign_removed = '✖'
let g:gitgutter_sign_modified_removed = '⊜'

" Jump between hunks
nmap <Leader>gn <Plug>GitGutterNextHunk  " git next
nmap <Leader>gp <Plug>GitGutterPrevHunk  " git previous

" Hunk-add and hunk-revert for chunk staging
nmap <Leader>ga <Plug>GitGutterStageHunk  " git add (chunk)
nmap <Leader>gu <Plug>GitGutterUndoHunk   " git undo (chunk)

