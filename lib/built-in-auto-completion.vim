"" Tags:
command! MakeTags !ctags -R .
" - ^] 		jump to tag under cursor
" - g^] 	ambiguous tags
" - ^t 		jump back up to the tag stack
" dont select the first result in menu
set completeopt=longest,menuone
set complete+=kspell
set shortmess+=c

"" AUTOCOMPLETION:
" map Enter to select highlighted menu item
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" move through results with Tab and Shift-Tab
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" keep menu open once a word
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" map Ctrl-n to Ctrl-Space
inoremap <C-@> <C-n>
inoremap <C-S-@> <C-p>

