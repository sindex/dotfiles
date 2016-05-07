if has("gui_macvim")
  macmenu &Tools.Make key=<nop>
  nnoremap <d-b> :update<bar>make<cr>
  inoremap <d-b> <C-O>:update<bar>make<cr>

  nnoremap <silent> <d-k> :confirm bd<cr>
  inoremap <silent> <d-k> <C-O>:confirm bd<cr>

  inoremap <silent> <d-]> <C-O>:bn!<CR>
  inoremap <silent> <d-[> <C-O>:bp!<CR>
  nnoremap <silent> <d-]> :bn!<CR>
  nnoremap <silent> <d-[> :bp!<CR>
endif

