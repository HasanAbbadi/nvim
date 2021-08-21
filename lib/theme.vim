source ~/.config/nvim/lib/themes/cafe.vim
source ~/.config/nvim/lib/themes/dracula.vim
source ~/.config/nvim/lib/themes/forest.vim
source ~/.config/nvim/lib/themes/gruv.vim
source ~/.config/nvim/lib/themes/mountaineer.vim
source ~/.config/nvim/lib/themes/nord.vim
source ~/.config/nvim/lib/themes/onedark.vim
source ~/.config/nvim/lib/themes/tokyonight.vim
source ~/.config/nvim/lib/themes/tomorrow-night.vim

if nvtheme =~ 'gruvchad'
	let g:colors = gruv
elseif nvtheme =~ 'javacafe'
	let g:colors = cafe
elseif nvtheme =~ 'chadracula'
	let g:colors = dracula
elseif nvtheme =~ 'everforest'
	let g:colors = forest
elseif nvtheme =~ 'mountaineer'
	let g:colors = mountaineer
elseif nvtheme =~ 'nord'
	let g:colors = nord
elseif nvtheme =~ 'norchad'
	let g:colors = nord
elseif nvtheme =~ 'onedark'
	let g:colors = onedark
elseif nvtheme =~ 'tokyonight'
	let g:colors = tokyonight
elseif nvtheme =~ 'tomorrow-night'
	let g:colors = tomorrow
endif

lua << EOF
local base16 = require 'base16'
base16(base16.themes(vim.g.nvtheme), true)
EOF
