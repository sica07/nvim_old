  let g:vimwiki_list = [{'path': '~/Dropbox/Apps/vimwiki/',
                       \ 'syntax': 'markdown', 'ext': '.md',
                       \ 'auto_tags': 1,
                       \ 'auto_generate_tags': 1,
                       \ 'auto_diary_index': 1,
                       \ 'auto_toc': 1,
                       \ 'auto_header': 1
                       \},
                       \{'path': '~/Dropbox/Apps/vimwiki/zettelkasten',
                       \ 'syntax': 'markdown', 'ext': '.md',
                       \ 'auto_tags': 1,
                       \ 'auto_generate_tags': 1,
                       \ 'auto_header': 1
                       \},
                       \{'path': '~/Dropbox/Apps/vimwiki/jwwiki',
                       \ 'syntax': 'markdown', 'ext': '.md',
                       \ 'auto_tags': 1
                       \}]
:nnoremap <leader>w@ "=strftime(" *@created %d-%m-%Y*")<CR>P
:inoremap <leader>w@ <C-R>=strftime(" *@created %d-%m-%Y*")<CR>
:nnoremap <leader>wu "=strftime("%Y%m%d%H%M%S")<CR>P
:inoremap <leader>wu <C-R>=strftime("%Y%m%d%H%M%S")<CR>
:nnoremap <leader>wx "=strftime(" ^@closed %d-%m-%Y^")<CR>P
:inoremap <leader>wx <C-R>=strftime("^@closed %d-%m-%Y^")<CR>
:nnoremap <leader>wa "=strftime("+ [%d/%m/%Y](#%d%m%y)")<CR>P
:inoremap <leader>wa <C-R>=strftime("+ [%d/%m/%Y](#%d%m%y)")<CR>
:nnoremap <leader>wD "=strftime('#### %d/%m/%Y')<CR>P
:inoremap <leader>wD <C-R>=strftime('#### %d/%m/%Y')<CR>
:nnoremap <leader>wd "=strftime('%d/%m/%Y')<CR>P
:inoremap <leader>wd <C-R>=strftime('%d/%m/%Y')<CR>
:nnoremap <leader>w/ :VimwikiSearchTags
:nnoremap <leader>wT :Toc<CR>

function ListReferences()
  !rg --vimgrep --no-hidden  % > /tmp/rg
  :cexp system("cat /tmp/rg")
  :Telescope quickfix
endfunction
:nnoremap <leader>wl :call ListReferences()<CR>

:nnoremap <leader>mp :MarkdownPreview<CR>
"let g:mkdp_path_to_chrome='/usr/bin/surf'
let g:mkdp_browser = 'firefox'

let g:vimwiki_listsyms = '✗○◐●✓'
let g:tagbar_type_vimwiki = {
          \   'ctagstype':'vimwiki'
          \ , 'kinds':['h:header']
          \ , 'sro':'&&&'
          \ , 'kind2scope':{'h':'header'}
          \ , 'sort':0
          \ , 'ctagsbin':'~/.config/nvim/tools/vwtags.py'
          \ , 'ctagsargs': 'markdown'
          \ }

let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_folding_level = 5
let g:vim_markdown_follow_anchor = 1
let g:vim_markdown_no_extensions_in_markdown = 1
let g:vim_markdown_autowrite = 1
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_toc_autofit = 1

