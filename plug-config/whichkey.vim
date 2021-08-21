" Map leader to which_key
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
call which_key#register('<Space>', 'g:which_key_map')

let g:which_key_map =  {
	\ '/' : 'comment',
	\	'b' : 'Toggle File Tree',
	\	'c' : 'unfold',
	\	'j' : 'Move Line Up',
	\	'k' : 'Move Line Down',
	\	'y' : 'Copy to System Clipboard',
	\	'Y' : 'Copy All',
	\ }

let g:which_key_map[' '] =  {
	\	'j' : 'Insert Empty Line Up',
	\	'k' : 'Insert Empty Line Down',
	\	'p' : 'Fuzzy Finder (FZF)',
	\ }
	
"" Hide status line
"autocmd! FileType which_key
"autocmd  FileType which_key set laststatus=0 noshowmode noruler
"			\| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Create map to add keys to
" Define a separator
let g:which_key_sep = ' -> '
set timeoutlen=300


"" Change the colors if you want
"highlight default link WhichKey          Operator
"highlight default link WhichKeySeperator Function
"highlight default link WhichKeyGroup     Identifier
"highlight default link WhichKeyDesc      Function


