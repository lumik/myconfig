""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" .gvimrc file
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim	
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'techlivezheng/vim-plugin-minibufexpl.git'
Plugin 'ervandew/supertab.git'
Plugin 'scrooloose/syntastic.git'
Plugin 'honza/vim-snippets.git'
Plugin 'SirVer/ultisnips.git'
Plugin 'fs111/pydoc.vim.git'
" Plugin 'davidhalter/jedi-vim.git'
Plugin 'fisadev/vim-isort'
Plugin 'luochen1990/rainbow'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
call vundle#end()
" DISPLAY
" Use unicode characters
set encoding=utf-8
" display status line
set laststatus=2
" display command typed in
set showcmd
" display line number
set number
" display syntax
" set background
" set background=dark
syntax on
" create new window on right or below
set splitright
set splitbelow
" shell style autocompletion
set wildmenu
set wildmode=longest:full
" highlight searching
set incsearch
set hlsearch
 
" MOVEMENT
" allow backspace and cursor keys to cross line boundaries
set whichwrap+=<,>,[,]
" Minimal number of screen lines to keep above and below the cursor
set scrolloff=5
" Switch windows using Alt+arrow
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
 
" TYPING
" insert spaces instead of tabs
set expandtab
" tab width
set tabstop=4
set shiftwidth=4
" work with 4-space chunks when using <Tab>
set smarttab
" use automatic indentation
set autoindent
" highlight column 120
set colorcolumn=121
" Comment and uncomment multiple lines in normal and visual modes
" Default comments. May be changed per file type
nmap <silent> <C-l> :s/^/# / <bar> nohlsearch <CR>
vmap <silent> <C-l> :s/^/# / <bar> nohlsearch <CR>
nmap <silent> <C-k> :s/^# // <bar> nohlsearch <CR>
vmap <silent> <C-k> :s/^# // <bar> nohlsearch <CR>
 
set lines=40 columns=165

" FILE TYPE PLUGIN
filetype plugin indent on
 
" ADVANCED
" Show trailing whitespaces and tab characters
" (use :dig for list of digraphs)
set list
set listchars=tab:»»,trail:·
" Color trailing whitespace and tab characters.
" Note that the foreground colors are overridden here, so this only works with the "set list" settings above.
highlight ExtraWhitespace ctermfg=red cterm=bold term=bold
match ExtraWhitespace '\s\+$\|\t'
" Highlight in newly opened windows
autocmd BufWinEnter * match ExtraWhitespace '\s\+$\|\t'

let g:syntastic_python_checkers = ['pylint', 'pep8', 'python']
let g:syntastic_check_on_open = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_python_pylint_args="--max-line-length=120"
let g:syntastic_python_pep8_args="--max-line-length=120"

let g:jedi#use_tabs_not_buffers = 0

" Auto-completion
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabMappingTabLiteral = '<C-tab>'

set completeopt=menuone,longest,preview

" Code folding
set foldmethod=indent
set foldlevel=99

" Rainbow parentheses
let g:rainbow_active = 1
colors industry
