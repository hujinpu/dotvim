filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

set nocompatible

" Security
set modelines=0

" Tabs/spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Basic options
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile
set undoreload=10000

" Status line
"set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)
set statusline=%F%m%r%h%w%=%{fugitive#statusline()}\ (%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)

" Backups
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files
set backup                        " enable backups

let mapleader = ","

" Make Y not dumb
nnoremap Y y$

" Searching
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" Soft/hard wrapping
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" Color scheme (terminal)
syntax on
set background=dark
colorscheme vividchalk

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

nnoremap j gj
nnoremap k gk

" Easy buffer navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>w <C-w>v<C-w>l

" Folding
set foldlevelstart=0
nnoremap <Space> za
vnoremap <Space> za

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap ; :

au FocusLost * :wa

inoremap <Esc> <nop>
inoremap jj <ESC>

" Rainbows!
noremap <leader>R :RainbowParenthesesToggle<CR>

" NERD Tree
nnoremap <F2> :NERDTreeToggle<CR>
let NERDTreeIgnore=['.vim$', '\~$', '.*\.pyc$', 'pip-log\.txt$']

" htip : quick haskell hints at the status line
let g:htip_bindkeys=1

" Ack
nnoremap <leader>a :Ack

" Tabular
nnoremap <Leader>b= :Tabularize /=<CR>
vnoremap <Leader>b= :Tabularize /=<CR>
nnoremap <Leader>b: :Tabularize /:\zs<CR>
vnoremap <Leader>b: :Tabularize /:\zs<CR>

" mathchit adn vim-textobj-rubyblock
runtime macros/matchit.vim

" When set to 1 the error window will be automatically opened when errors are
" detected, and closed when none are detected.
" https://github.com/scrooloose/syntastic/blob/master/doc/syntastic.txt
let g:syntastic_auto_loc_list=1

" Gundo
nnoremap <F5> :GundoToggle<CR>
