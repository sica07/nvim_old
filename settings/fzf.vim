" only show MRU files from within your cwd
"let g:fzf_mru_relative = 1
" to enable found references displayed in fzf
let g:LanguageClient_selectionUI = 'fzf'
let g:rg_command = '
  \ rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --color "always"
  \ -g "*.{js,json,php,md,styl,jade,html,config,py,cpp,c,go,hs,rb,conf}"
  \ -g "!{.git,node_modules,vendor}/*" '

set grepprg=rg\ --vimgrep
set rtp+=~/.fzf

" search for visual selection
vnoremap <leader>f "hy:exec "Rg ".escape('<C-R>h', "/\.*$^~[()")<cr>

"search files
nnoremap <silent> <c-p> :FZF<CR>
"search buffers
nnoremap <silent> <c-n> :BTags<cr>
"search most recent used
nnoremap <silent> <c-e> :FZFMru<CR>
"search most recent used
nnoremap <silent> <c-u> :Buffers<CR>
