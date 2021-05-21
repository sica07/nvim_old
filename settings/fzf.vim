" only show MRU files from within your cwd
"let g:fzf_mru_relative = 1
" to enable found references displayed in fzf
"let g:LanguageClient_selectionUI = 'fzf'
command! -bang -nargs=* Rg
  \ call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --color=always --smart-case -g "!{composer.lock,webpack.mix.js,tags,package-lock.json}"'.shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
"let g:rg_command = '
  "\ rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --color "always"
  "\ -g "*.{js,json,php,md,styl,jade,html,config,py,cpp,c,go,hs,rb,conf}"
  "\ -g "!{composer.lock,webpack.mix.js,tags,package-lock.json}"
  "\ -g "!{.git,node_modules,vendor,storage}/*" '

"set grepprg=rg\ --vimgrep
set rtp+=~/.fzf

" search for visual selection
"vnoremap <leader>f "hy:exec "Rg ".escape('<C-R>h', "/\.*$^~[()")<cr>

"search files
"nnoremap <silent> <c-p> :FZF<CR>
"search buffers
nnoremap <silent> <c-n> :BTags<cr>
"nnoremap <silent> <c-t> :Tags<cr>
"search most recent used
"nnoremap <silent> <c-e> :FZFMru<CR>
"search most recent used
"nnoremap <silent> <c-u> :Buffers<CR>
"search keymaps
"nnoremap <silent> <c-m> :Maps<cr>
"search commands
"nnoremap <silent> <c-c> :Commands<cr>
"search with Rg
nnoremap <silent> <c-r> :Rg<CR>
"search lines in Buffer
"nnoremap <silent> <c-i> :Lines<CR>
"search lines in Buffer
"nnoremap <silent> <c-g> :Commits!<CR>
