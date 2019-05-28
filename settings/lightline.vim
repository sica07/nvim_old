let g:lightline = {
            \ 'colorscheme': 'PaperColor_dark',
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'gitstatus','filename' ]],
            \   'right': [ ['lineinfo'], ['percent'], [ 'fileformat', 'fileencoding', 'filetype', 'neomake']]
            \ },
            \ 'component_function': {
            \   'fugitive': 'LightlineFugitive',
            \   'filename': 'LightlineFilename',
            \   'fileformat': 'LightlineFileformat',
            \   'filetype': 'LightlineFiletype',
            \   'fileencoding': 'LightlineFileencoding',
            \   'gitstatus' : 'LightLineGitStatus',
            \   'mode': 'LightlineMode',
            \ },
            \ 'component_expand' : {
            \   'neomake' : 'lightline_neomake#component',
            \  },
            \ 'component_type': {
            \   'neomake': 'error',
            \ },
            \ 'component': {
            \   'readonly': '%{&readonly?"":""}',
            \ },
            \ 'separator': { 'left': '', 'right': '' },
            \ 'subseparator': { 'left': '', 'right': '' }
            \ }

function! LightlineModified()
    return &ft =~ 'help' ? '' : &modified ? '✚' : &modifiable ? '✖' : '⊜'
endfunction

function! LightLineGitStatus()
  return join(filter(map(['A','M','D'], {i,v -> v.': '.GitGutterGetHunkSummary()[i]}), 'v:val[-1:]'), ' ')
endfunction

function! LightlineReadonly()
    return &ft !~? 'help' && &readonly ? 'RO' : ''
endfunction

function! LightlineFilename()
    let fname = expand('%:t')
    return fname == 'ControlP' && has_key(g:lightline, 'ctrlp_item') ? g:lightline.ctrlp_item :
                \ fname == '__Tagbar__' ? g:lightline.fname :
                \ fname =~ '__Gundo\|NERD_tree' ? '' :
                \ &ft == 'vimfiler' ? vimfiler#get_status_string() :
                \ &ft == 'unite' ? unite#get_status_string() :
                \ &ft == 'vimshell' ? vimshell#get_status_string() :
                \ ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
                \ ('' != fname ? fname : '[No Name]') .
                \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

function! LightlineFugitive()
    try
        if expand('%:t') !~? 'Tagbar\|Gundo\|NERD' && &ft !~? 'vimfiler' && exists('*fugitive#head')
            let mark = ' '  " edit here for cool mark
            let branch = fugitive#head()
            return branch !=# '' ? mark.branch : ''
        endif
    catch
    endtry
    return ''
endfunction

function! LightlineFileformat()
    return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

function! LightlineFiletype()
    return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! LightlineFileencoding()
    return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction

function! LightlineMode()
    let fname = expand('%:t')
    return fname == '__Tagbar__' ? 'Tagbar' :
                \ fname == 'ControlP' ? 'CtrlP' :
                \ fname == '__Gundo__' ? 'Gundo' :
                \ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
                \ fname =~ 'NERD_tree' ? 'NERDTree' :
                \ &ft == 'unite' ? 'Unite' :
                \ &ft == 'vimfiler' ? 'VimFiler' :
                \ &ft == 'vimshell' ? 'VimShell' :
                \ winwidth(0) > 60 ? lightline#mode() : ''
endfunction

let g:tagbar_status_func = 'TagbarStatusFunc'

function! TagbarStatusFunc(current, sort, fname, ...) abort
    let g:lightline.fname = a:fname
    return lightline#statusline(0)
endfunction

" printf-compatible string that accepts two values: the first is the symbol of
" a Neomake counter ('E' for errors, 'W' for warnings, etc.), the second is the
" number of occurrances in the buffer.
let g:lightline_neomake#format = '%s: %d'
" Separator between displayed Neomake counters.
let g:lightline_neomake#sep = ' '

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0
