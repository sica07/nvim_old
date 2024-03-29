"install plug if it does not exist
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd!
    autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')


"EXPLORING/SEARCHING CONTENT
Plug 'kyazdani42/nvim-tree.lua'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-dispatch'
"fuzzy search
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'junegunn/fzf.vim'
"Plug 'pbogut/fzf-mru.vim'
"Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope-file-browser.nvim'
"Plug 'fannheyward/telescope-coc.nvim'
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'j-hui/fidget.nvim'
"Plug 'nvim-lua/completion-nvim'
"""Snippets and completion
Plug 'ray-x/lsp_signature.nvim'

Plug 'rafamadriz/friendly-snippets'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'hrsh7th/cmp-cmdline'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'quangnguyen30192/cmp-nvim-tags'
"Plug 'lukas-reineke/cmp-rg'

"Plug 'onsails/lspkind-nvim'
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
"Plug 'akinsho/bufferline.nvim'
"Next generation quickfix
Plug 'kevinhwang91/nvim-bqf'
Plug 'folke/trouble.nvim'
"Automatically change to project root"
Plug 'airblade/vim-rooter'
" Vim Script
"Plug 'ahmedkhalf/project.nvim'
"display indent levels
"Plug 'lukas-reineke/indent-blankline.nvim'
"undo list
Plug 'sjl/gundo.vim'
"tagbar
Plug 'liuchengxu/vista.vim'
"search
Plug 'windwp/nvim-spectre'

"PRESENTATION
"collections of colorschemes
Plug 'kadekillary/skull-vim'
Plug 'widatama/vim-phoenix'
Plug 'owickstrom/vim-colors-paramount'
Plug 'rakr/vim-two-firewatch'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'https://gitlab.com/yorickpeterse/vim-paper.git'
Plug 'AlessandroYorba/Alduin'
Plug 'NLKNguyen/papercolor-theme'
"Plug 'spf13/vim-colors'
"Plug 'flazz/vim-colorschemes'
Plug 'fxn/vim-monochrome'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/everforest'
Plug 'mcchrish/zenbones.nvim'
Plug 'rktjmp/lush.nvim' "needed by zenbones
Plug 'chriskempson/base16-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'joshdick/onedark.vim'
"statusbar on steroids
"Plug 'itchyny/lightline.vim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-lualine/lualine.nvim'
Plug 'SmiteshP/nvim-gps'
Plug 'haringsrob/nvim_context_vt'
Plug 'vimpostor/vim-tpipeline'
Plug 'norcalli/nvim-colorizer.lua'

let g:tpipeline_split = 1
"vs like incons (special icons should be loaded last)
"Plug 'ryanoasis/vim-devicons'

"TEXT EDITING
"delete, change and add such surroundings in pairs
Plug 'tpope/vim-surround'
"Inserts matching bracket, paren, brace or quote
Plug 'Raimondi/delimitMate'
"best text alignment and filtering
Plug 'godlygeek/tabular'
Plug 'AndrewRadev/splitjoin.vim'


""GIT
"a Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'
":GV! will only list commits that affected the current file
":GV? fills the location list with the revisions of the current file
":GV or :GV? can be used in visual mode to track the changes in the selected lines.
Plug 'junegunn/gv.vim'
Plug 'lewis6991/gitsigns.nvim'

""PROGRAMMING
Plug 'tpope/vim-dotenv'
"Language Server
"Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
"code commenting
Plug 'scrooloose/nerdcommenter'
"linting
Plug 'neomake/neomake'
"Plug 'mkalinski/vim-lightline_neomake'
"highlight other uses of the current word under the cursor
Plug 'RRethy/vim-illuminate'
"DB
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'kristijanhusak/vim-dadbod-completion'
Plug 'windwp/nvim-autopairs'
"Emmmet navigation
Plug 'mattn/emmet-vim', {'for': ['html','php','phtml','blade','vue']}
Plug 'karb94/neoscroll.nvim'

Plug 'phaazon/hop.nvim'
"LANGUAGE SPECIFIC
"syntax highlight
Plug 'sheerun/vim-polyglot'
""PHP
Plug 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}
Plug 'camilledejoye/phpactor-mappings'
Plug 'swekaj/php-foldexpr.vim', { 'for': 'php' }
Plug 'aeke/vim-php-cs-fixer', {'for': 'php'}
Plug 'adoy/vim-php-refactoring-toolbox', {'for': 'php'}
Plug 'vim-scripts/phpcs.vim', {'for': 'php'}
Plug 'arnaud-lb/vim-php-namespace', {'for': 'php'}
Plug 'alvan/vim-php-manual', {'for': 'php'}
Plug 'Rican7/php-doc-modded', {'for': 'php'}
Plug '2072/php-indenting-for-vim', {'for': 'php'}
"Plug 'vim-vdebug/vdebug', {'for': 'php'}
Plug 'puremourning/vimspector'
" HTML
"autoclose html tags
Plug 'vim-scripts/HTML-AutoCloseTag', {'for': ['html', 'blade']}

" PYTHON
"Plug 'nvie/vim-flake8', {'for': 'python'}
"Plug 'vim-scripts/indentpython.vim', {'for': 'python'} (polyglot)
"Plug 'python-mode/python-mode', {'for': 'python'}
Plug 'metakirby5/codi.vim'
" MISC
"distraction-free writing
Plug 'Pocco81/TrueZen.nvim'
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
Plug 'editorconfig/editorconfig-vim'

call plug#end()

" update tags in background whenever you write a php, js and python file
au BufWritePost *.php silent! !eval '[ -f ".git/hooks/ctags_php" ] && .git/hooks/ctags_php' &
au BufWritePost *.js silent! !eval '[ -f ".git/hooks/ctags_js" ] && .git/hooks/ctags_js' &
au BufWritePost *.py silent! !eval '[ -f ".git/hooks/ctags_py" ] && .git/hooks/ctags_py' &

" On save, remove all trailing spaces
au BufWritePre * :%s/\s\+$//e

" Set empty buffers/new files type to markdown
au FileType vimwiki,markdown :color zenbones | set background=light
"au BufWritePost *.md silent! !rclone sync ~/Dropbox/Apps/vimwiki dropbox:Apps/vimwiki








""""""""""""""""""""""FROM VIMRC"""""""""""""""""""""
set nocompatible

" ================ General Config ====================
set nonumber                    " Line numbers
set norelativenumber              " Relative numbers
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
set colorcolumn=100
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
"autocmd FileType c,cpp,java,go,php,javascript,python,twig,xml,yml,json,markdown autocmd BufWritePre <buffer> call StripTrailingWhitespace()
"autocmd FileType c,cpp,java,go,javascript,python,twig,xml,yml,json,markdown autocmd BufWritePre <buffer> call StripTrailingWhitespace()

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
"set list
"set listchars=tab:▸\ ,trail:•,extends:#,nbsp:· " Highlight problematic whitespace
"set listchars=tab:-\ ,trail:•,extends:#,nbsp:· " Highlight problematic whitespace

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points


" ================ Folds ============================

"set nofoldenable "disable folding when opening the file
set foldmethod=marker
set foldmarker={,}
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
set nospell

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
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
    "tmux specific settings
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    let &t_ZH="\<Esc>[3m"
    let &t_ZR="\<Esc>[23m"
    set termguicolors
        "status line: 0: never 1: only if there are at least two windows 2: always
    "set laststatus=2
"endif

" Show tab number (useful for <leader>1, <leader>2.. mapping)
autocmd VimEnter * set guitablabel=%N:\ %t\ %M

" Always switch to the current file directory
" (caveat: CtrlP will search just in the current folder if active)
"autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif

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
