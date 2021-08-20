" Where all the magic happens
let mapleader = ' '

" old but gold.
inoremap <C-Backspace> <C-W>
inoremap <C-S-Left> <Esc>vb
inoremap <C-S-Right> <Esc>vw

" putting empty lines and removing them
" add:
nnoremap <silent><leader><leader>j :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><leader><leader>k :set paste<CR>m`O<Esc>``:set nopaste<CR>
" remove:
nnoremap <silent><leader><leader>J m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><leader><leader>K m`:silent -g/\m^\s*$/d<CR>``:noh<CR>

" keeping cursor centered when jumping
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ'z

" moving text up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==a
inoremap <C-k> <esc>:m .-2<CR>==a
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==

" changing the same word globally
nnoremap cn *``cgn
nnoremap cN *``cgN

" better copying behaviour
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG
nnoremap Y y$

" quick source
nnoremap <leader>so :source %<CR>

" folding remap
nnoremap <leader>c za

" try a different colorscheme
nnoremap <leader>nc :call RandomColorScheme()<CR>

" Commenting lines
nmap <leader>o <plug>NERDCommenterToggle
vmap <leader>o <plug>NERDCommenterToggle

" fuzzyfinding
nnoremap <leader><leader>p :FZF<CR>
