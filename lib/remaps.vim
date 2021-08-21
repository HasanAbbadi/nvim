source ~/.config/nvim/lib/settings.lua
"
" Where all the magic happens
let mapleader = ' '

" old but gold.
inoremap <C-Backspace> <C-W>
inoremap <C-S-Left> <Esc>vb
inoremap <C-S-Right> <Esc>vw

" easier splits navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" don't kick me out >:(
command Q bd %

" no hl
nnoremap <silent> <Esc> :set hlsearch!<CR>

" better buffers movement
nnoremap <silent> <Tab> :bnext<CR>
nnoremap <silent> <S-Tab> :bprevious<CR>

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
nmap ToggleComment <plug>NERDCommenterToggle
vmap ToggleComment <plug>NERDCommenterToggle

" fuzzyfinding
nnoremap <silent> <leader>ff :Telescope find_files<CR>

" file explorer
noremap <silent> <leader>e :NvimTreeToggle<CR>

" Dashboard
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>fw :DashboardFindWord<CR>
nnoremap <silent> <Leader>fm :DashboardJumpMark<CR>
nnoremap <silent> <Leader>cn :DashboardNewFile<CR>
