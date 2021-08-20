" colorscheme: 
colorscheme deus

set termguicolors
set background=dark    " Setting dark mode

hi CursorLine ctermbg=YELLOW cterm=bold guibg=NONE
hi CursorColumn ctermbg=YELLOW cterm=bold guibg=NONE
"set background=dark
hi SignColumn ctermbg=NONE guibg=NONE
hi Normal ctermbg=NONE guibg=NONE
hi NonText ctermbg=NONE guibg=NONE
hi EndOfBuffer ctermbg=NONE guibg=NONE
hi LineNr ctermfg=white guifg=whitesmoke guibg=NONE

"autocmd InsertEnter * highlight foldcolumn ctermbg=darkgreen   guibg=darkgreen
"autocmd InsertLeave * highlight foldcolumn ctermbg=NONE guibg=NONE
autocmd VimEnter * ColorizerToggle
set noshowmode
highlight Comment cterm=italic

"" CHANGE YOUR COLORSCHEME ON THE GO:
function RandomColorScheme()
  let mycolors = split(globpath(&rtp,"**/colors/*.vim"),"\n") 
  exe 'so ' . mycolors[localtime() % len(mycolors)]
  unlet mycolors
  hi foldcolumn guibg=NONE ctermbg=NONE
  hi LineNr guibg=NONE ctermbg=NONE
	hi LineNr ctermfg=white guifg=white
	hi SignColumn guibg=NONE ctermbg=NONE
	hi Normal ctermbg=NONE guibg=NONE
	hi NonText ctermbg=NONE guibg=NONE
  exec ":echo g:colors_name"
endfunction

:command NewColor call RandomColorScheme()
