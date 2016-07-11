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

highlight! Statement guibg=bg guifg=fg gui=italic  
highlight! Identifier guibg=bg guifg=fg gui=bold  
highlight! Type guibg=bg guifg=fg gui=bold  
highlight! PreProc guibg=bg guifg=fg gui=bold  
highlight! Constant guibg=bg guifg=#101010 gui=bold  
highlight! Comment guibg=bg guifg=#303030 gui=italic  
highlight! Special guibg=bg guifg=fg gui=bold  
highlight! SpecialKey guibg=bg guifg=fg gui=bold  
highlight! Directory guibg=bg guifg=fg gui=bold  
highlight! link Title Directory
highlight! Title guifg=black
highlight! link MoreMsg Comment
highlight! link Question Comment
highlight! link htmlLink Normal

" vim
hi link vimFunction Identifier

let g:colors_name = "acme-mono"
