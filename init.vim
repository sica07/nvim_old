"install plug if it does not exist
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd!
    autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')


"EXPLORING/SEARCHING CONTENT
Plug 'scrooloose/nerdtree'
"fuzzy search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'pbogut/fzf-mru.vim'
Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }
"Automatically change to project root"
Plug 'airblade/vim-rooter'
"display indent levels
Plug 'nathanaelkane/vim-indent-guides'
"Find in code and edit
Plug 'dyng/ctrlsf.vim'
"undo list
Plug 'sjl/gundo.vim'
"tagbar
Plug 'liuchengxu/vista.vim'

"PRESENTATION
"collections of colorschemes
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'gosukiwi/vim-atom-dark'
Plug 'tek256/simple-dark'
Plug 'spf13/vim-colors'
Plug 'flazz/vim-colorschemes'
Plug 'altercation/vim-colors-solarized'
Plug 'chriskempson/base16-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'joshdick/onedark.vim'
"statusbar on steroids
Plug 'itchyny/lightline.vim'
Plug 'vimpostor/vim-tpipeline'
let g:tpipeline_split = 1
"vs like incons (special icons should be loaded last)
Plug 'ryanoasis/vim-devicons'

"TEXT EDITING
"delete, change and add such surroundings in pairs
Plug 'tpope/vim-surround'
"Inserts matching bracket, paren, brace or quote
Plug 'spf13/vim-autoclose'
"best text alignment and filtering
Plug 'godlygeek/tabular'


""GIT
"a Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'

""PROGRAMMING
"Language Server
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
"code commenting
Plug 'scrooloose/nerdcommenter'
"linting
Plug 'neomake/neomake'
Plug 'mkalinski/vim-lightline_neomake'
"highlight other uses of the current word under the cursor
Plug 'RRethy/vim-illuminate'
"snippets"
"Plug 'SirVer/ultisnips'
Plug 'phux/vim-snippets'
"Emmmet navigation
Plug 'mattn/emmet-vim', {'for': ['html','php','phtml','blade','vue']}
"LANGUAGE SPECIFIC
"syntax highlight
Plug 'sheerun/vim-polyglot'
""PHP
Plug 'swekaj/php-foldexpr.vim', { 'for': 'php' }
Plug 'stephpy/vim-php-cs-fixer', {'for': 'php'}
Plug 'adoy/vim-php-refactoring-toolbox', {'for': 'php'}
Plug 'arnaud-lb/vim-php-namespace', {'for': 'php'}
Plug 'alvan/vim-php-manual', {'for': 'php'}
Plug 'Rican7/php-doc-modded', {'for': 'php'}
Plug '2072/php-indenting-for-vim', {'for': 'php'}
Plug 'vim-vdebug/vdebug', {'for': 'php'}
" HTML
"autoclose html tags
Plug 'vim-scripts/HTML-AutoCloseTag', {'for': ['html', 'blade']}

" PYTHON
"Plug 'nvie/vim-flake8', {'for': 'python'}
"Plug 'vim-scripts/indentpython.vim', {'for': 'python'} (polyglot)
"Plug 'python-mode/python-mode', {'for': 'python'}

" MISC
"distraction-free writing
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'mattn/calendar-vim'
Plug 'vimwiki/vimwiki'
"vimwiki
Plug 'joanrivera/vim-zimwiki-syntax', {'for': 'vimwiki'}
Plug 'freitass/todo.txt-vim'
"preview in browser html, md, rdoc, textile, etc files
Plug 'iamcco/markdown-preview.vim', {'for': 'markdown'}
Plug 'wakatime/vim-wakatime'

call plug#end()

" update tags in background whenever you write a php, js and python file
au BufWritePost *.php silent! !eval '[ -f ".git/hooks/ctags_php" ] && .git/hooks/ctags_php' &
au BufWritePost *.js silent! !eval '[ -f ".git/hooks/ctags_js" ] && .git/hooks/ctags_js' &
au BufWritePost *.py silent! !eval '[ -f ".git/hooks/ctags_py" ] && .git/hooks/ctags_py' &

" On save, remove all trailing spaces
au BufWritePre * :%s/\s\+$//e

" Set empty buffers/new files type to markdown
au FileType vimwiki,markdown :color base16-one-light
"au BufWritePost *.md silent! !rclone sync ~/Dropbox/Apps/vimwiki dropbox:Apps/vimwiki








""""""""""""""""""""""FROM VIMRC"""""""""""""""""""""
set nocompatible

" ================ General Config ====================
set nonumber                    " Line numbers
set relativenumber              " Relative numbers
"set numberwidth=1
set backspace=indent,eol,start  " Allow backspace in insert mode
set history=1000                 " Store 50 lines of command history
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
"set lazyredraw                  " Dont redraw automatically to speed up refresh, especially with relative numbers
syntax on                       " Syntax highligt on
set exrc
set secure
let mapleader=","               " Change the leader to be a comma vs slash
let maplocalleader=","               " Change the leader to be a comma vs slash
set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
set encoding=UTF-8

" ================ Turn Off Swap Files ==============

set noswapfile
"swap files directory
set directory^=$HOME/.vim/tmp//
set nobackup
set nowb


" ================ Indentation and Formatting =======

set nowrap                      " Do not wrap long lines
set autoindent                  " Indent at the same level as the previous one
set shiftwidth=2                " Indentation of 2 spaces
set softtabstop=2
set tabstop=2                   " Width of a TAB character
set expandtab                   " Replace <TAB> with spacesP
set linespace=10                 " No extra spaces between rows
set ffs=unix,dos,mac            " Try recognizing dos, unix, and mac line endings.

" Remove trailing whitespaces and ^M chars
autocmd FileType c,cpp,java,go,php,javascript,python,twig,xml,yml,json,markdown autocmd BufWritePre <buffer> call StripTrailingWhitespace()

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list
"set listchars=tab:▸\ ,trail:•,extends:#,nbsp:· " Highlight problematic whitespace
set listchars=tab:-\ ,trail:•,extends:#,nbsp:· " Highlight problematic whitespace

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points


" ================ Folds ============================

set nofoldenable "disable folding when opening the file
set foldmethod=marker
set foldmarker=<,>
set foldnestmax=4       " Deepest fold is 4 levels
set foldlevelstart=1
" Which commands trigger auto-unfold
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo
au BufWritePost :%foldopen



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
set dictionary=/usr/share/dict/words
set spelllang=en
set spell

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
set background=dark
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if has("gui_running")	" GUI color and font settings
    set guioptions-=m           " Remove the menubar
    set guioptions-=T           " Remove the toolbar
    set guioptions-=L           " Remove the left scroll
    set guioptions-=r           " Remove the right scroll
    set guioptions-=e           " Remove tabs as we will use airline's tabs

    "set guifont=Fura\ Mono\ Nerd\ Font\ 13
    set guifont=Iosevka\ Term\ 11,Menlo\ for\ Powerline\ 10,DejaVu\ Sans\ Mono\ for\ Powerline\ Book\ 10,Menlo\ Regular\ 12,Consolas\ Regular\ 13,Courier\ New\ Regular\ 14
    ""colorscheme base16-tomorrow
    colorscheme onedark
elseif has("termguicolors")
    set termguicolors
    "color atom
    "color base16-github
    "color eclipse
    "color base16-one-light
    "color twilight
    "color gruvbox
    "color darkburn
    "color darktango
    "color base16-material
    color onedark
    "color grayscale-dark
    "tmux specific settings
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    "status line: 0: never 1: only if there are at least two windows 2: always
    set laststatus=2
elseif &term =~ '256color'
    "set t_Co=256                " 256 color mode
    ""let g:onedark_termcolors=256
    ""colorscheme base16-onedark
    "colors base16-material-darker
    "color xoria256
    set t_tu=
endif

" Show tab number (useful for <leader>1, <leader>2.. mapping)
autocmd VimEnter * set guitablabel=%N:\ %t\ %M

" Always switch to the current file directory
" (caveat: CtrlP will search just in the current folder if active)
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

" Re-source ~/.vimrc whenever it is saved
augroup automaticallySourceVimrc
  au!
  au bufwritepost init.vim source ~/.config/nvim/init.vim
augroup END

for fpath in split(globpath('~/.config/nvim/settings', '*.vim'), '\n')
    exe 'source' fpath
endfor


let g:node_client_debug = 1
