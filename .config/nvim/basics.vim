"Basic Setup
"*****************************************************************************"
filetype indent on
filetype plugin on
"Encoding
set shiftround
set ttyfast

"Fix backspace indent

"Tabs. May be overriten by autocmd rules
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

"Map leader to ,
let mapleader=','

"Enable hidden buffers
set hidden

"Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"spell check
set spell spelllang=en

"Directories for swp files
set nobackup
set noswapfile
set fileformats=unix,dos,mac

"*****************************************************************************
"" Visual Settings
"*****************************************************************************
syntax on
set ruler
set number relativenumber
set colorcolumn=120

let no_buffers_menu=1
" if !exists('g:not_finish_vimplug')
"   colorscheme molokai
" endif

set mousemodel=popup
set mouse=
set t_Co=256


" IndentLine
let g:indentLine_enabled = 1
let g:indentLine_char = '┆'
let g:indentLine_faster = 1

if &term =~ '256color'
  set t_ut=
endif

" Disable the blinking cursor
set scrolloff=5

" Status bar
set laststatus=2

" Use modeline overrides
set modeline
set modelines=0
