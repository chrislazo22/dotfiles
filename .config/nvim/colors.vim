colorscheme molokai

" vim-airline
let g:airline_theme = 'minimalist'
let g:airline#extensions#tabline#enabled = 1 " enable buffers
let g:airline_powerline_fonts = 1 " powerline fonts
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_section_z = airline#section#create(['linenr', 'maxlinenr'])

" Ale linter
let g:airline#extensions#ale#enabled = 1
let g:ale_linters = {
\   'css': ['prettier'],
\   'ruby': ['rubocop'],
\}
let g:ale_linters_explicit = 1

" CoC
hi CocMenuSel ctermbg=109 guibg=#13354A
