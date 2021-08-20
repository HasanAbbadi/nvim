" Act like the chad you are.
set nocompatible
set nowrap
set colorcolumn=90
set cursorcolumn
set cursorline
syntax enable
filetype plugin on

" why is this not set by default smh (no delay when switching between modes)
set timeoutlen=1000 ttimeoutlen=0

" cursor
let &t_EI = "\<Esc>]50;CursorShape=0\x7"


" File Name
command! FileName echo expand("%")

" enable mouse functionality
set mouse=a

" change split bar to solid and add some space
set fillchars+=vert:\ 
set foldcolumn=1
hi foldcolumn guibg=NONE ctermbg=NONE

" line number
set nu
set relativenumber

" tab options
set smarttab
set cindent
set tabstop=2
set shiftwidth=2

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"zz" |
     \ endif

" Folding
set foldlevel=0
