set background=light
highlight clear 

highlight! StatusLine guibg=#aeeeee guifg=#000000 gui=NONE 
highlight! StatusLineNC guibg=#eaffff guifg=#000000 gui=NONE 
highlight! WildMenu gui=NONE 
highlight! VertSplit gui=NONE 
highlight! Folded gui=italic 
highlight! Conceal gui=NONE 
highlight! LineNr guifg=#505050 
highlight! CursorLineNR guifg=#000000

highlight! Statement gui=none
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

let g:colors_name = "acme-white"
