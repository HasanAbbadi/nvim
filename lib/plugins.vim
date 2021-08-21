call plug#begin('~/.config/nvim/plugged')

" Intersting O^o
Plug 'ThePrimeagen/vim-be-good'
Plug 'glepnir/dashboard-nvim'

" better experience
Plug 'pangloss/vim-javascript'
Plug 'psliwka/vim-smoothie'
Plug 'justinmk/vim-sneak'

" i forgor x_x, i remembet x_x
Plug 'liuchengxu/vim-which-key'

"" airline:
Plug 'glepnir/galaxyline.nvim', {'branch': 'main'}

"" fuzzy finding plugins:
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

"" vscode like experience:
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdcommenter'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'akinsho/nvim-bufferline.lua'

" file tree:
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

" easier lua
Plug 'norcalli/nvim.lua'

" Themes
Plug 'NvChad/nvim-base16.lua'
Plug 'tomasiser/vim-code-dark'
Plug 'rainglow/vim'

call plug#end()
