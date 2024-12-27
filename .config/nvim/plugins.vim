" Plugins
call plug#begin('~/.config/nvim/plugged')

" Tools
Plug 'airblade/vim-gitgutter' " shows github info in gutter
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } "Fuzzy finder
Plug 'junegunn/fzf.vim' " fuzzy search for vim, great tool
Plug 'tpope/vim-commentary' " easy way to comment out lines
Plug 'tpope/vim-fugitive' " vim github wrapper
Plug 'vim-airline/vim-airline' " you know
Plug 'vim-airline/vim-airline-themes' " same
Plug 'dense-analysis/ale' " code correction
Plug 'neoclide/coc.nvim', {'branch': 'release'} " code completion
Plug 'jiangmiao/auto-pairs' " Handles auto pairs, testing
Plug 'yggdroot/indentline'

"Ruby
Plug 'tpope/vim-rails'

"Javascrrpt/React
Plug 'prettier/vim-prettier'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'ntpeters/vim-better-whitespace'

" Color
Plug 'tomasr/molokai'

" Slim
Plug 'slim-template/vim-slim'

call plug#end()

let g:strip_whitespace_on_save=1
let g:strip_whitespace_confirm=0

" ALE
" Set specific linters
let g:ale_linters = { 'ruby': ['rubocop'], 'javascript': ['eslint'] }

let g:ale_fixers = { 'ruby': ['rubocop'], 'javascript': ['eslint'] }

" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0
let g:ale_fix_on_save = 1

let g:python3_host_prog = '/opt/homebrew/bin/python3'
