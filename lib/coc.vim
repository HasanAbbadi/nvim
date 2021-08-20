"" COC NVIM:
let g:coc_global_extenstions = [
	\ 'coc-snippets',
	\ 'coc-pairs',
	\ 'coc-tsserver',
	\ 'coc-html',
	\ 'coc-css',
	\ 'coc-prettier',
	\ 'coc-json'
 	\ ]
command! -nargs=0 Prettier :CocCommand prettier.formatFile
imap <C-l> <Plug>(coc-snippets-expand)

