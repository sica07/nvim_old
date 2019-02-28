"install plug if it does not exist
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd!
    autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')

"tree explorer
Plug 'scrooloose/nerdtree'
"nerdtree open in all tabs
Plug 'jistr/vim-nerdtree-tabs'
"Homepage"
Plug 'mhinz/vim-startify'
"Change to project root"
Plug 'airblade/vim-rooter'
"collections of colorschemes
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'gosukiwi/vim-atom-dark'
Plug 'spf13/vim-colors'
Plug 'flazz/vim-colorschemes'
Plug 'altercation/vim-colors-solarized'
Plug 'chriskempson/base16-vim'
"delete, change and add such surroundings in pairs
Plug 'tpope/vim-surround'
"Inserts matching bracket, paren, brace or quote
Plug 'spf13/vim-autoclose'
"Find in code and edit
Plug 'dyng/ctrlsf.vim'
"search results counting
Plug 'vim-scripts/IndexedSearch'
"display marks
"Plug 'vim-scripts/ShowMarks'
"match surroundings 
Plug 'jwhitley/vim-matchit'
"statusbar on steroids
Plug 'itchyny/lightline.vim'
"Relative line numbers
Plug 'myusuf3/numbers.vim'
"display indent levels
Plug 'nathanaelkane/vim-indent-guides'
"undo list
Plug 'sjl/gundo.vim'
"distraction-free writeing
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
"vs like incons
Plug 'ryanoasis/vim-devicons'
Plug 'mattn/calendar-vim'
""GIT
"a Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'
"git diff in the gutter
Plug 'airblade/vim-gitgutter'
"fuzzy search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'pbogut/fzf-mru.vim'

""PROGRAMMING

"code commenting
Plug 'scrooloose/nerdcommenter'
"best text alignment and filtering
Plug 'godlygeek/tabular'
"check the editorconfig file specifications
Plug 'editorconfig/editorconfig-vim'
"autocompletion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugs' }
Plug 'kristijanhusak/deoplete-phpactor'
"linting
Plug 'neomake/neomake'
Plug 'mkalinski/vim-lightline_neomake'
"tabgar"
Plug 'majutsushi/tagbar'
"snippets"
Plug 'SirVer/ultisnips' | Plug 'phux/vim-snippets'
""PHP
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
Plug 'StanAngeloff/php.vim', {'for': 'php'}
Plug 'stephpy/vim-php-cs-fixer', {'for': 'php'}
Plug 'adoy/vim-php-refactoring-toolbox', {'for': 'php'}
Plug 'arnaud-lb/vim-php-namespace', {'for': 'php'}
Plug 'alvan/vim-php-manual', {'for': 'php'}
Plug 'Rican7/php-doc-modded', {'for': 'php'}
Plug '2072/php-indenting-for-vim', {'for': 'php'}
Plug 'vim-vdebug/vdebug', {'for': 'php'}
""JS
Plug 'elzr/vim-json'
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
" HTML
"autoclose html tags
Plug 'vim-scripts/HTML-AutoCloseTag'
"support for css3 syntax
Plug 'hail2u/vim-css3-syntax'
"support for haml,sass and scss syntax
Plug 'tpope/vim-haml'
"Emmmet
Plug 'mattn/emmet-vim', {'for': ['html','php','phtml']}

" PYTHON 
Plug 'nvie/vim-flake8', {'for': 'python'}
Plug 'vim-scripts/indentpython.vim', {'for': 'python'}
Plug 'python-mode/python-mode', {'for': 'python'}


" Misc
Plug 'joanrivera/vim-zimwiki-syntax', {'for': 'vimwiki'}
Plug 'vimwiki/vimwiki'
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
"preview in browser html, md, rdoc, textile, etc files
Plug 'iamcco/markdown-preview.vim', {'for': 'markdown'}
Plug 'wakatime/vim-wakatime'
Plug 'ludovicchabant/vim-gutentags'


" Nyaovim"

Plug 'rhysd/nyaovim-popup-tooltip'
Plug 'rhysd/nyaovim-markdown-preview'


call plug#end()

" update tags in background whenever you write a php file
au BufWritePost *.php silent! !eval '[ -f ".git/hooks/ctags" ] && .git/hooks/ctags' &








""""""""""""""""""""""FROM VIMRC"""""""""""""""""""""
set nocompatible


" ================ General Config ====================
set nonumber                    " Line numbers 
set numberwidth=2
set backspace=indent,eol,start  " Allow backspace in insert mode
set history=100                 " Store 50 lines of command history 
set showcmd                     " Show incomplete cmds down the bottom
set showmode                    " Show current mode down the bottom
set showmatch		                " Cursor shows matching elements ), } 
set cursorline                  " Highlight current line
set gcr=a:blinkon0              " Disable cursor blink
set visualbell                  " No sounds
set autoread                    " Reload files changed outside vim
set autowriteall                " Automatically write the file when switching buffers.
set ruler                       " Show cursor position all the time
set hidden                      " Allow buffer switching without saving 
set clipboard=unnamed           " Yank to the default register (*) by default
set lazyredraw                  " Dont redraw automatically to speed up refresh, especially with relative numbers
syntax on                       " Syntax highligt on
let mapleader=","               " Change the leader to be a comma vs slash
set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb


" ================ Indentation and Formatting =======

set nowrap                      " Do not wrap long lines
set autoindent                  " Indent at the same level as the previous one
set shiftwidth=4                " Indentation of 2 spaces
set softtabstop=4
set tabstop=4                   " Width of a TAB character
set expandtab                   " Replace <TAB> with spacesP
set linespace=10                 " No extra spaces between rows
set ffs=unix,dos,mac            " Try recognizing dos, unix, and mac line endings.

" Remove trailing whitespaces and ^M chars
autocmd FileType c,cpp,java,go,php,javascript,python,twig,xml,yml autocmd BufWritePre <buffer> call StripTrailingWhitespace()

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list
set listchars=tab:▸\ ,trail:•,extends:#,nbsp:· " Highlight problematic whitespace 

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" For programming languages using a semi colon at the end of statement.
autocmd FileType c,cpp,css,java,javascript,perl,php,jade inoremap <silent> ;; :call appendSemiColon()<CR>
autocmd FileType c,cpp,css,java,javascript,perl,php,jade inoremap <silent> ;; <ESC>:call <SID>appendSemiColon()<CR>



" ================ Folds ============================

set foldmethod=marker
set foldmarker={,}
set foldnestmax=3       " Deepest fold is 3 levels
set foldlevelstart=0
" Which commands trigger auto-unfold
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo

" ================ Search and Completion  ===========
set incsearch                   " Find as you type search
set hlsearch                    " Highlight search terms
set winminheight=0              " Windows can be 0 line high
set ignorecase                  " Case insensitive search
set smartcase                   " Case sensitive when uc present
set wildmenu                    " Show list instead of just completing
set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
set wildignore=*.o,*.obj,*~     " files to ignore when tab completing
set wildignore+=*.git*
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
"set wildignore+=vendor/**
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================ Windows ==========================
set splitright                  " Puts new vsplit windows to the right of the current
set splitbelow                  " Puts new split windows to the bottom of the current"
set scrolljump=5                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor
set sidescrolloff=15
set sidescroll=1

"Get rid of ugly split borders.
hi vertsplit guifg=bg guibg=bg
" ================ GUI =========================

set background=light
if has("gui_running")	" GUI color and font settings
    set guioptions-=m           " Remove the menubar
    set guioptions-=T           " Remove the toolbar
    set guioptions-=L           " Remove the left scroll 
    set guioptions-=r           " Remove the right scroll
    set guioptions-=e           " Remove tabs as we will use airline's tabs

    "set guifont=Fura\ Mono\ Nerd\ Font\ 13
    set guifont=Iosevka\ Term\ 11,Menlo\ for\ Powerline\ 10,DejaVu\ Sans\ Mono\ for\ Powerline\ Book\ 10,Menlo\ Regular\ 12,Consolas\ Regular\ 13,Courier\ New\ Regular\ 14
    ""colorscheme base16-tomorrow
    colorscheme dracula
elseif has("termguicolors")
    set termguicolors
    "color atom
    color base16-github
    "tmux specific settings
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
else
    set t_Co=256                " 256 color mode
    ""let g:onedark_termcolors=256
    ""colorscheme base16-onedark
    "colors base16-material-darker
    color xoria256
endif


" Show tab number (useful for <leader>1, <leader>2.. mapping)
autocmd VimEnter * set guitablabel=%N:\ %t\ %M

" Always switch to the current file directory
" (commented because CtrlP will search just in the current folder if active)
autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif

"Git commit line should not be longer than  72 chars"
autocmd Filetype gitcommit setlocal spell textwidth=72


"no matter what colorscheme I use I want folded and commented lines to be italic
hi Folded gui=italic
hi Comment gui=italic

" Restore cursor to file position in previous editing session
function! ResCur()
    if line("'\"") <= line("$")
        normal! g`"
        return 1
    endif
endfunction

augroup resCur
    autocmd!
    autocmd BufWinEnter * call ResCur()
augroup END

" Remove trailing whitespaces and ^M chars
function! StripTrailingWhitespace()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " do the business:
    %s/\s\+$//e
    " clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" If there isn't one, append a semi colon to the end of the current line.
function! s:appendSemiColon()
    if getline('.') !~ ';$'
        let original_cursor_position = getpos('.')
        exec("s/$/;/")
        call setpos('.', original_cursor_position)
    endif
endfunction

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


" Keep search matches in the middle of the window and pulse the line when moving
" to them.
function! PulseCursorLine()
    let current_window = winnr()

    windo set nocursorline
    execute current_window . 'wincmd w'

    setlocal cursorline

    redir => old_hi
    silent execute 'hi CursorLine'
    redir END
    let old_hi = split(old_hi, '\n')[0]
    let old_hi = substitute(old_hi, 'xxx', '', '')

    hi CursorLine guibg=#3a3a3a
    redraw
    sleep 20m

    hi CursorLine guibg=#4a4a4a
    redraw
    sleep 30m

    hi CursorLine guibg=#3a3a3a
    redraw
    sleep 30m

    hi CursorLine guibg=#2a2a2a
    redraw
    sleep 20m

    execute 'hi ' . old_hi

    windo set cursorline
    execute current_window . 'wincmd w'
endfunction

for fpath in split(globpath('~/.config/nvim/settings', '*.vim'), '\n')
    exe 'source' fpath
endfor
