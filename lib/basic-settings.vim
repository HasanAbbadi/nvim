source ~/.config/nvim/lib/settings.lua
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

" change split bar to solid and add some space and remove ~ at EOF
set fcs=eob:\ 
set foldcolumn=1
hi foldcolumn guibg=NONE ctermbg=NONE

" line number
set nu
set relativenumber

" tab options
if indent =~ 'spaces'
	set smarttab
endif
set cindent
execute "set tabstop=".g:numberOfTabs
execute "set shiftwidth=".g:numberOfTabs

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"zz" |
     \ endif

" Folding
set foldlevel=0

"" Fuzzy Finding:
" search everywhere with tab-completion
set path+=**
set wildmenu
set wildmode=longest,list,full
" Ignore files
set wildignore+=*_build/*
set wildignore+=**/node_modules/*
set wildignore+=**/.git/*

"" BUILT IN File Manager:
let g:netrw_banner=0		" disble banner 
let g:netrw_browse_split=4	" open in prior window
let g:netrw_altv=1		" splits right
let g:netrw_liststyle=3         " display style
