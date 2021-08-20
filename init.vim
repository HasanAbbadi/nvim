"" Plugins:
call plug#begin('~/.vim/plugged')

" fun
Plug 'ThePrimeagen/vim-be-good'

" better experience
Plug 'pangloss/vim-javascript'
Plug 'psliwka/vim-smoothie'

"" airline:
Plug 'glepnir/galaxyline.nvim'
Plug 'Avimitin/nerd-galaxyline'

"" fuzzy finding plugins:
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"" vscode like experience:
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'norcalli/nvim-colorizer.lua'

" Themes
Plug 'tomasiser/vim-code-dark'
Plug 'morhetz/gruvbox'
Plug 'rainglow/vim'
Plug 'Avimitin/neovim-deus'

call plug#end()

source ~/.config/nvim/lib/basic-settings.vim
source ~/.config/nvim/lib/colorscheme.vim
source ~/.config/nvim/lib/nerdtree.vim
source ~/.config/nvim/lib/coc.vim
source ~/.config/nvim/lib/remaps.vim
source ~/.config/nvim/lib/built-in-auto-completion.vim

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
let g:netrw_liststyle=3         " display stlyle
