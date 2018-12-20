nmap     <leader>F <Plug>CtrlSFPrompt
vmap     <leader>F <Plug>CtrlSFVwordPath
let g:ctrlsf_position = 'right'
"highlight matching line both in preview window and actual file
let g:ctrlsf_selected_line_hl = 'op'
"focus the prive window when search started
let g:ctrlsf_auto_focus = {"at" : "start"}
let g:ctrlsf_winsize = '30%'

let g:ctrlsf_ignore_dir = ['.idea', 'node_modules', 'vendor']


"nmap     <leader>F <Plug>CtrlSFQuickfixPrompt
"vmap     <leader>F <Plug>CtrlSFQuickfixVwordPath
