set background=light
highlight clear 

highlight! Normal guibg=#ffffea guifg=#000000 
highlight! StatusLine guibg=#aeeeee guifg=#000000 gui=NONE 
highlight! StatusLineNC guibg=#eaffff guifg=#000000 gui=NONE 
highlight! WildMenu guibg=#000000 guifg=#eaffff gui=NONE 
highlight! VertSplit guibg=#ffffea guifg=#000000 gui=NONE 
highlight! Folded guibg=#cccc7c guifg=fg gui=italic 
highlight! FoldColumn guibg=#fcfcce guifg=fg 
highlight! Conceal guibg=bg guifg=fg gui=NONE 
highlight! LineNr guibg=bg guifg=#505050 
highlight! Visual guibg=fg guifg=bg 
highlight! CursorLine guibg=#ffffca guifg=fg 
highlight! CursorLineNR guifg=#000000

highlight! Statement gui=italic  
highlight! Identifier gui=none  
highlight! Type gui=none  
highlight! PreProc gui=none  
highlight! Constant gui=none  
highlight! Comment gui=italic  
highlight! Special gui=none  
highlight! SpecialKey gui=none  
highlight! Directory gui=none  
highlight! Title gui=none

" vim
hi link vimFunction Identifier

let g:colors_name = "acme"
