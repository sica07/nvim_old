" Easier moving in tabs and windows
" The lines conflict with the default digraph mapping of <C-K>
" If you prefer that functionality, add the following to your
" .vimrc.before.local file:
"   let g:spf13_no_easyWindows = 1
noremap <C-L> <C-W>l<C-W>_
noremap <C-H> <C-W>h<C-W>_

" Wrapped lines goes down/up to next row, rather than next line in file.
noremap j gj
noremap k gk

" insert new line while in normal mode
noremap zj moo<esc>k`o
nnoremap zk moO<esc>`o

" Stupid shift key fixes
if has("user_commands")
  command! -bang -nargs=* -complete=file E e<bang> <args>
  command! -bang -nargs=* -complete=file W w<bang> <args>
  command! -bang -nargs=* -complete=file Wq wq<bang> <args>
  command! -bang -nargs=* -complete=file WQ wq<bang> <args>
  command! -bang Wa wa<bang>
  command! -bang WA wa<bang>
  command! -bang Q q<bang>
  command! -bang QA qa<bang>
  command! -bang Qa qa<bang>
endif
cmap Tabe tabe

"Moving between tabs
"noremap <S-h> gT
noremap <S-l> gt

"Create new tab
nnoremap <leader>t :tabnew<CR>

"Edit the init.vim file
nnoremap <leader>vim :e ~/.config/nvim/init.vim<CR>

" ,q to toggle quickfix window (where you have stuff like GitGrep)
" ,oq to open it back up (rare)
nmap <silent> <leader>qc :cclose<CR>
nmap <silent> <leader>qo :copen<CR>
"open location list
nmap <silent> <leader>lo :lopen<CR>
nmap <silent> <leader>lc :lclose<CR>
" Stolen from Steve Losh vimrc: https://bitbucket.org/sjl/dotfiles/src/tip/vim/.vimrc
" Open a Quickfix window for the last search.
nnoremap <silent> <leader>q/ :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>

" Zoom in and out of current window with ,gz
"map <silent> <C-o> <C-w>o
" Use numbers to pick the tab you want (like iTerm)
nnoremap <leader>1 :tabn 1<cr>
nnoremap <leader>2 :tabn 2<cr>
nnoremap <leader>3 :tabn 3<cr>
nnoremap <leader>4 :tabn 4<cr>
nnoremap <leader>5 :tabn 5<cr>
nnoremap <leader>6 :tabn 6<cr>
nnoremap <leader>7 :tabn 7<cr>
nnoremap <leader>8 :tabn 8<cr>
nnoremap <leader>9 :tabn 9<cr>

" Create window splits easier. The default
" way is Ctrl-w,v and Ctrl-w,s. I remap
" this to vv and ss
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s
nnoremap <leader>vv :vnew<CR>
nnoremap <leader>ss :new<CR>

" Adjust viewports to the same size
map <Leader>= <C-w>=
" Code folding options
nmap <leader>f0 :set foldlevel=0<CR>
nmap <leader>f1 :set foldlevel=1<CR>
nmap <leader>f2 :set foldlevel=2<CR>
nmap <leader>f3 :set foldlevel=3<CR>
nmap <leader>f4 :set foldlevel=4<CR>
nmap <leader>f5 :set foldlevel=5<CR>
"Clear current search highlight by double tapping //
nmap <silent> // :nohlsearch<CR>
" Some helpers to edit mode
" http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

" Easier horizontal scrolling
map zl zL
map zh zH
" Avoid accidental hits of <F1> while aiming for <Esc>
noremap! <F1> <Esc>

" Use Q to intelligently close a window
" (if there are multiple windows into the same buffer)
" or kill the buffer entirely if it's the last window looking into that buffer
function! CloseWindowOrKillBuffer()
    let number_of_windows_to_this_buffer = len(filter(range(1, winnr('$')), "winbufnr(v:val) == bufnr('%')"))

    " We should never bdelete a nerd tree
    if matchstr(expand("%"), 'NERD') == 'NERD'
        wincmd c
        return
    endif

    if number_of_windows_to_this_buffer > 1
        wincmd c
    else
        bdelete
    endif
endfunction

nnoremap qq :call CloseWindowOrKillBuffer()<CR>

" Quickly save
nnoremap ,w :w<CR>

" Swap implementations of ` and ' jump to markers
" By default, ' jumps to the marked line, ` jumps to the marked line and
" column, so swap them
nnoremap ' `
nnoremap ` '

" Quickly get out of insert mode without your fingers having to leave the
" home row (either use 'jj' or 'jk')
inoremap jj <Esc>

" Jump to matching pairs easily, with Tab
"nnoremap <Tab> %
""vnoremap <Tab> %

" Stop that stupid ex mode
nnoremap Q <nop>

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$


"Create/edit file in the current directory
nmap :ed :edit %:p:h/

" Write readonly file
cnoremap w!! w !sudo tee > /dev/null %
"Start a terminal session
nmap tt :terminal zsh<CR>
"Start a split nvim terminal
nmap :st :sp term://zsh
"Start a vertical split nvim terminal
nmap :vt :vertical terminal
"Escape terminal mode in an Nvim Terminal"
:tnoremap <Esc> <C-\><C-n>

"Resizing windows
nnoremap<S-Up> :resize +2<CR>
nnoremap<S-Down> :resize -2<CR>
nnoremap<S-Left> :vertical resize +2<CR>
nnoremap<S-Right> :vertical resize -2<CR>
